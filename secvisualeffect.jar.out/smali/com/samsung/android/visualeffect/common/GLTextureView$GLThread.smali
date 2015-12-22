.class Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/common/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field protected currFPSTime:J

.field protected lastUpdateTime:J

.field private mEglHelper:Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/visualeffect/common/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field protected prevFPSTime:J


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/visualeffect/common/GLTextureView;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide v2, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->prevFPSTime:J

    iput-wide v2, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->currFPSTime:J

    iput-wide v2, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->lastUpdateTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mSizeChanged:Z

    iput v4, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mWidth:I

    iput v4, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHeight:I

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestRender:Z

    iput v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRenderMode:I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v24, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEglHelper:Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglContext:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    :cond_0
    :goto_0
    :try_start_0
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v25

    monitor-enter v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mShouldExit:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/visualeffect/common/GLTextureView;

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->mRenderer:Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;
    invoke-static/range {v24 .. v24}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$700(Lcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;->onDestroy()V

    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v25

    monitor-enter v25

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglContextLocked()V

    monitor-exit v25

    return-void

    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v24

    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljava/lang/Runnable;

    move-object v11, v0

    :goto_2
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_14

    :try_start_4
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mPaused:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mPaused:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglContextLocked()V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v4, 0x1

    :cond_4
    if-eqz v15, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v15, 0x0

    :cond_5
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_6
    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/samsung/android/visualeffect/common/GLTextureView;

    if-nez v21, :cond_11

    const/16 v17, 0x0

    :goto_3
    if-eqz v17, :cond_7

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v24

    if-eqz v24, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglContextLocked()V

    :cond_8
    if-eqz v16, :cond_9

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEglHelper:Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;->finish()V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v24, v0

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v24, v0

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_a
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mWaitingForSurface:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mSurfaceIsBad:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mWaitingForSurface:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v10, :cond_d

    const/16 v23, 0x0

    const/4 v10, 0x0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRenderComplete:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->readyToDraw()Z

    move-result v24

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v24, v0

    if-nez v24, :cond_e

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v24, v0

    if-nez v24, :cond_f

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v18, 0x1

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mSizeChanged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHeight:I

    const/16 v23, 0x1

    const/4 v6, 0x1

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mSizeChanged:Z

    :cond_10
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestRender:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    :catchall_1
    move-exception v24

    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v24

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v25

    monitor-enter v25

    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->stopEglContextLocked()V

    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v24

    :cond_11
    :try_start_8
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->mPreserveEGLContextOnPause:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$800(Lcom/samsung/android/visualeffect/common/GLTextureView;)Z

    move-result v17

    goto/16 :goto_3

    :cond_12
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v24

    if-eqz v24, :cond_e

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEglHelper:Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;->start()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/16 v24, 0x1

    :try_start_a
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglContext:Z

    const/4 v5, 0x1

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_4

    :catch_0
    move-exception v20

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;)V

    throw v20

    :cond_13
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    :cond_14
    if-eqz v6, :cond_15

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEglHelper:Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;->createSurface()Z

    move-result v24

    if-eqz v24, :cond_1e

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v25

    monitor-enter v25
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/16 v24, 0x1

    :try_start_c
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v25
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const/4 v6, 0x0

    :cond_15
    if-eqz v7, :cond_16

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEglHelper:Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v12, v0

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v7, 0x0

    :cond_16
    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/samsung/android/visualeffect/common/GLTextureView;

    if-eqz v21, :cond_17

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->mRenderer:Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$700(Lcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEglHelper:Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v12, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_17
    const/4 v5, 0x0

    :cond_18
    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/samsung/android/visualeffect/common/GLTextureView;

    if-eqz v21, :cond_19

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->mRenderer:Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$700(Lcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v0, v12, v1, v13}, Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_19
    const/16 v18, 0x0

    :cond_1a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/samsung/android/visualeffect/common/GLTextureView;

    if-eqz v21, :cond_1c

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/visualeffect/common/GLTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->currFPSTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->currFPSTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->prevFPSTime:J

    move-wide/from16 v26, v0

    sub-long v8, v24, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->currFPSTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_1b

    const-wide/16 v24, 0x0

    cmp-long v24, v8, v24

    if-eqz v24, :cond_1f

    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->lastUpdateTime:J

    const/4 v14, 0x1

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->mRenderer:Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$700(Lcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->currFPSTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->prevFPSTime:J

    :cond_1c
    :goto_5
    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEglHelper:Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;->swap()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    const-string v24, "GLThread"

    const-string v25, "eglSwapBuffers"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v25

    monitor-enter v25
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const/16 v24, 0x1

    :try_start_e
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mSurfaceIsBad:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v25
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :cond_1d
    :goto_6
    :sswitch_0
    if-eqz v23, :cond_0

    const/4 v10, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v24

    :try_start_f
    monitor-exit v25
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v24

    :cond_1e
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v25

    monitor-enter v25
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/16 v24, 0x1

    :try_start_11
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mSurfaceIsBad:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v25

    goto/16 :goto_0

    :catchall_4
    move-exception v24

    monitor-exit v25
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v24

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->lastUpdateTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    const-wide/16 v26, 0x28

    cmp-long v24, v24, v26

    if-lez v24, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->lastUpdateTime:J

    const/4 v14, 0x1

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->mRenderer:Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$700(Lcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->currFPSTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->prevFPSTime:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_5

    :cond_20
    const/4 v14, 0x0

    goto/16 :goto_5

    :sswitch_1
    const/4 v15, 0x1

    goto :goto_6

    :catchall_5
    move-exception v24

    :try_start_13
    monitor-exit v25
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v24
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_6
    move-exception v24

    :try_start_15
    monitor-exit v25
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    throw v24

    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEglHelper:Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglContext:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglSurface:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEglHelper:Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestPaused:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onResume()V
    .locals 3

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestPaused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRenderComplete:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onWindowResize(II)V
    .locals 3

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iput p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mWidth:I

    iput p2, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRenderComplete:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mShouldExit:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRequestRender:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;->threadExiting(Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;->threadExiting(Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;->threadExiting(Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mRenderMode:I

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mHasSurface:Z

    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    # getter for: Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/samsung/android/visualeffect/common/GLTextureView;->access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
