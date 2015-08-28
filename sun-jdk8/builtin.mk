# $NetBSD: builtin.mk,v 1.3 2014/09/03 12:48:38 tron Exp $

BUILTIN_PKG:=	sun-jdk8

BUILTIN_FIND_FILES_VAR:=	JDK8
BUILTIN_FIND_FILES.JDK8=	\
	/System/Library/Frameworks/JavaVM.framework/Versions/1.8/Commands/javac\
	/usr/jdk/instances/jdk1.8.0/bin/javac

###
### On Darwin, there are no 1.8 symlinks that would enable us to find a
### 1.8 JDK.  Instead, the best method is to use the java_home system
### program to find the default 1.8 JDK if it exists.
###
.if ${OPSYS} == "Darwin"
_JAVA_HOME_ANSWER!=	\
	if [ -x /usr/libexec/java_home ]; then \
		result=`/usr/libexec/java_home -v 1.8 2> /dev/null`; \
		if [ $$? -eq 0 ]; then \
			echo "$$result"; \
		else \
			echo; \
		fi; \
	fi
BUILTIN_FIND_FILES.JDK8+=	${_JAVA_HOME_ANSWER}/bin/javac
.endif

.include "../../mk/buildlink3/bsd.builtin.mk"

###
### Determine if there is a built-in implementation of the package and
### set IS_BUILTIN.<pkg> appropriately ("yes" or "no").
###
.if !defined(IS_BUILTIN.sun-jdk8)
.  if empty(JDK8:M__nonexistent__)
IS_BUILTIN.sun-jdk8=	yes
.  else
IS_BUILTIN.sun-jdk8=	no
.  endif
.endif
MAKEVARS+=	IS_BUILTIN.sun-jdk8

###
### If there is a built-in implementation, then set BUILTIN_PKG.<pkg> to
### a package name to represent the built-in package.
###
.if !defined(BUILTIN_PKG.sun-jdk8) && \
    !empty(IS_BUILTIN.sun-jdk8:M[yY][eE][sS]) && \
    empty(JDK8:M__nonexistent__)

BUILTIN_VERSION.sun-jdk8!= ${JDK8} -version 2>&1 | \
	${AWK} '{print $$2; exit}' | \
	${AWK} '{sub(/^1\./,"");sub(/_/,".");print $$1}'

BUILTIN_PKG.sun-jdk8=	sun-jdk8-${BUILTIN_VERSION.sun-jdk8}
.endif
MAKEVARS+=	BUILTIN_PKG.sun-jdk8

###
### Determine whether we should use the built-in implementation if it
### exists, and set USE_BUILTIN.<pkg> appropriate ("yes" or "no").
###
.if !defined(USE_BUILTIN.sun-jdk8)
.  if ${PREFER.sun-jdk8} == "pkgsrc"
USE_BUILTIN.sun-jdk8=	no
.  else
USE_BUILTIN.sun-jdk8=	${IS_BUILTIN.sun-jdk8}
.    if defined(BUILTIN_PKG.sun-jdk8) && \
        !empty(IS_BUILTIN.sun-jdk8:M[yY][eE][sS])
USE_BUILTIN.sun-jdk8=	yes
.      for _dep_ in ${BUILDLINK_API_DEPENDS.sun-jdk8}
.        if !empty(USE_BUILTIN.sun-jdk8:M[yY][eE][sS])
USE_BUILTIN.sun-jdk8!=						\
	if ${PKG_ADMIN} pmatch ${_dep_:Q} ${BUILTIN_PKG.sun-jdk8:Q}; then \
		${ECHO} yes;						\
	else								\
		${ECHO} no;						\
	fi
.        endif
.      endfor
.    endif
.  endif  # PREFER.sun-jdk8
.endif
