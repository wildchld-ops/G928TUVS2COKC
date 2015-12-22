.class public Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;
.super Ljava/lang/Object;
.source "SPhysicsEffect_GL.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "VFXContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field private mEGLClientVersion:I

.field private mRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3098

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;->mEGLClientVersion:I

    const-string v0, "SPhysicsEffect_GL"

    const-string v1, "VFXContextFactory Constructure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;->mEGLClientVersion:I

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    const-string v1, "SPhysicsEffect_GL"

    const-string v2, "createContext"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;->mEGLClientVersion:I

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    const-string v0, "SPhysicsEffect_GL"

    const-string v1, "destroyContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->onDestroy()V

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
