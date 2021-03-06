QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
    allperosn.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    allperosn.h \
    mainwindow.h

FORMS += \
    allperosn.ui \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../build-libr-Desktop_Qt_5_15_0_MinGW_64_bit-Debug/release/ -llibr
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../build-libr-Desktop_Qt_5_15_0_MinGW_64_bit-Debug/debug/ -llibr
else:unix: LIBS += -L$$PWD/../build-libr-Desktop_Qt_5_15_0_MinGW_64_bit-Debug/ -llibr

INCLUDEPATH += $$PWD/../libr
DEPENDPATH += $$PWD/../libr

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../build-libr-Desktop_Qt_5_15_0_MinGW_64_bit-Debug/release/ -llibr
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../build-libr-Desktop_Qt_5_15_0_MinGW_64_bit-Debug/debug/ -llibr

INCLUDEPATH += $$PWD/../libr
DEPENDPATH += $$PWD/../libr

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../build-libr-Desktop_Qt_5_15_0_MinGW_64_bit-Debug/release/liblibr.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../build-libr-Desktop_Qt_5_15_0_MinGW_64_bit-Debug/debug/liblibr.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../build-libr-Desktop_Qt_5_15_0_MinGW_64_bit-Debug/release/libr.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../build-libr-Desktop_Qt_5_15_0_MinGW_64_bit-Debug/debug/libr.lib
