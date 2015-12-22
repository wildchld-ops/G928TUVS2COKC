.class public Lcom/android/systemui/keyguard/ViewCaptureUtil;
.super Ljava/lang/Object;
.source "ViewCaptureUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewCaptureUtil"


# instance fields
.field private LANDSCAPE_CAPTURE_IMAGE_PATH:Ljava/lang/String;

.field private final LAND_FILE_NAME:Ljava/lang/String;

.field private PORTRAIT_CAPTURE_IMAGE_PATH:Ljava/lang/String;

.field private final PORT_FILE_NAME:Ljava/lang/String;

.field private final PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

.field private S_VIEW_COVER_CAPTURE_IMAGE_PATH:Ljava/lang/String;

.field private final S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

.field private components:[Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mIsCovered:Z

.field private mKeyguardBottomArea:Landroid/view/View;

.field private mMobileKeyboardIsCovered:Z

.field private mRoot:Landroid/view/View;

.field private mSecKeyguardClockView:Landroid/view/View;

.field private originViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORTRAIT_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->LANDSCAPE_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->S_VIEW_COVER_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    const-string v0, "lockscreen_capture_port.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME:Ljava/lang/String;

    const-string v0, "lockscreen_capture_land.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->LAND_FILE_NAME:Ljava/lang/String;

    const-string v0, "lockscreen_capture_port_keyboard.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

    const-string v0, "s_view_cover_capture.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRoot:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mSecKeyguardClockView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mKeyguardBottomArea:Landroid/view/View;

    iput-boolean p5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getCoverState()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private arrangeComponents(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    const-string v5, "ViewCaptureUtil"

    const-string v6, "root view is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getWindowWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    array-length v5, v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    array-length v6, v6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    array-length v3, v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private arrangeComponents(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    const-string v4, "ViewCaptureUtil"

    const-string v5, "root view is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getWindowWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-nez p3, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, p3, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    if-eqz p4, :cond_5

    if-eqz p6, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_6

    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCoverState.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", secondView.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v4

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    :goto_2
    invoke-virtual {p6}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-virtual {v1, p4, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "root.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", secondView.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_2
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ViewCaptureUtil"

    const-string v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getCoverState()V
    .locals 5

    const-string v3, "cover"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "ViewCaptureUtil"

    const-string v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getSavePath()Ljava/lang/String;
    .locals 5

    const-string v0, "/storage/emulated/"

    const-string v1, "/Android/data/com.android.systemui/cache/"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v2, "ViewCaptureUtil"

    const-string v3, "bmp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v0, "s_view_cover_capture.png"

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v2, p3, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_0

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v2, :cond_4

    const-string v0, "lockscreen_capture_port_keyboard.png"

    goto :goto_1

    :pswitch_0
    const-string v0, "lockscreen_capture_land.png"

    goto :goto_1

    :pswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v2, :cond_3

    const-string v0, "lockscreen_capture_port_keyboard.png"

    goto :goto_1

    :cond_3
    const-string v0, "lockscreen_capture_port.png"

    goto :goto_1

    :cond_4
    const-string v0, "lockscreen_capture_port.png"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const-string v4, "ViewCaptureUtil"

    const-string v5, "bmp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capture image path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x4000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    const-string v4, "ViewCaptureUtil"

    const-string v5, "save captured file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    const-string v4, "ViewCaptureUtil"

    const-string v5, "saveScreenshot exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method private setSavePath()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen_capture_port.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORTRAIT_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen_capture_land.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->LANDSCAPE_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s_view_cover_capture.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->S_VIEW_COVER_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    return-void
.end method

.method private viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x3f59999a    # 0.85f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    const-string v2, "ViewCaptureUtil"

    const-string v3, "view is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v7, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    instance-of v2, p1, Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-eqz v2, :cond_3

    const-string v2, "ViewCaptureUtil"

    const-string v3, "scale clock view area for mobile keyboard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-ne v2, v7, :cond_5

    iput-boolean v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    instance-of v2, p1, Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-eqz v2, :cond_3

    const-string v2, "ViewCaptureUtil"

    const-string v3, "scale clock view area for S View Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    goto :goto_1
.end method


# virtual methods
.method public varargs prepareBitmaps([Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public varargs prepareViews([Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    return-void
.end method

.method public screenCapture()V
    .locals 10

    const-string v0, "ViewCaptureUtil"

    const-string v1, "try capture the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->setSavePath()V

    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mSecKeyguardClockView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mKeyguardBottomArea:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRoot:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mSecKeyguardClockView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mKeyguardBottomArea:Landroid/view/View;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->arrangeComponents(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v7, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;-><init>(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v7, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
