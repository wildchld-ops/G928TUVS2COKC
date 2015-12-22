.class public Lcom/android/incallui/secservice/SecVideoCallManager;
.super Ljava/lang/Object;
.source "SecVideoCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;
    }
.end annotation


# static fields
.field private static final ENG:Z

.field private static mPIPVisible:Z

.field private static sVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;


# instance fields
.field public isCameraClosedbyDcm:Z

.field private mCSVTManager:Lsiso/vt/VTManager;

.field private mContext:Landroid/content/Context;

.field private mFarEndSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field mHandler:Landroid/os/Handler;

.field private mHandoverPending:Z

.field private mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

.field private mIMSInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private mIsLowFPSRequested:Z

.field private mIsLowMemoryListenerRegistered:Z

.field private mIsPrevModify:Z

.field private mIsPrevVideo:Z

.field private mIsResponseReceiver:Z

.field private mIsScreenRotated:Z

.field private final mLowMemoryReceiver:Landroid/content/BroadcastReceiver;

.field private mNearEndSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mNeedToShowModifyAnimation:Z

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private final mResponseReceiver:Landroid/content/BroadcastReceiver;

.field private mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

.field private mToast:Landroid/widget/Toast;

.field private mVTMode:I

.field private final mVideoCallListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProj:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/secservice/SecVideoCallManager;->ENG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPIPVisible:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVideoCallListener:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsLowMemoryListenerRegistered:Z

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsLowFPSRequested:Z

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsPrevModify:Z

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsPrevVideo:Z

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsScreenRotated:Z

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mNeedToShowModifyAnimation:Z

    iput v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVTMode:I

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandoverPending:Z

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsResponseReceiver:Z

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosedbyDcm:Z

    new-instance v0, Lcom/android/incallui/secservice/SecVideoCallManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secservice/SecVideoCallManager$1;-><init>(Lcom/android/incallui/secservice/SecVideoCallManager;)V

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mFarEndSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mNearEndSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v0, Lcom/android/incallui/secservice/SecVideoCallManager$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/secservice/SecVideoCallManager$4;-><init>(Lcom/android/incallui/secservice/SecVideoCallManager;)V

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mResponseReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVideoProj:[Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/secservice/SecVideoCallManager$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/secservice/SecVideoCallManager$6;-><init>(Lcom/android/incallui/secservice/SecVideoCallManager;)V

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mLowMemoryReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/incallui/secservice/SecVideoCall;

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/secservice/SecVideoCall;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/secservice/SecVideoCallManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/secservice/SecVideoCallManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->updateSelectedImageFromGallery(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/secservice/SecVideoCallManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/secservice/SecVideoCallManager;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->updateSelectedVideoFromGallery(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/secservice/SecVideoCallManager;)Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/secservice/SecVideoCallManager;)Lcom/android/incallui/secservice/SecVideoCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/secservice/SecVideoCallManager;)Lsiso/vt/VTManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/secservice/SecVideoCallManager;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    return-object v0
.end method

.method private checkAndNotifyInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsVideoCall:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyQualityInfo(II)V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCameraInfo(II)V

    :cond_0
    return-void
.end method

.method private checkAndShowVideoPopup()V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsVideoCall:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getVideoPopupService()Lcom/android/incallui/SecVideoPopupService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->showVideoPopup()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->showVideoPopup()V

    :cond_1
    return-void
.end method

.method private checkCameraStartConditionSecurity()Z
    .locals 2

    const-string v1, "persist.sys.camera_lock"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_lock.enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDefaultImages()V
    .locals 3

    const-string v0, "data/data/com.android.incallui/files/preset_defaultimage_qcif.jpg"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data/data/com.android.incallui/files/preset_defaultimage_qcif.jpg"

    const v1, 0x7f020052

    const-string v2, "preset_defaultimage_qcif.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const-string v0, "data/data/com.android.incallui/files/preset_default_image_qvga.jpg"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data/data/com.android.incallui/files/preset_default_image_qvga.jpg"

    const v1, 0x7f020053

    const-string v2, "preset_default_image_qvga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    const-string v0, "data/data/com.android.incallui/files/preset_defaultimage_vga.jpg"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data/data/com.android.incallui/files/preset_defaultimage_vga.jpg"

    const v1, 0x7f020054

    const-string v2, "preset_defaultimage_vga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    const-string v0, "data/data/com.android.incallui/files/preset_defaultimage_vga_land.jpg"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "data/data/com.android.incallui/files/preset_defaultimage_vga_land.jpg"

    const v1, 0x7f020055

    const-string v2, "preset_defaultimage_vga_land.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    const-string v0, "data/data/com.android.incallui/files/video_call_capture_vga.jpg"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "data/data/com.android.incallui/files/video_call_capture_vga.jpg"

    const v1, 0x7f02025c

    const-string v2, "video_call_capture_vga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    const-string v0, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    const v1, 0x7f02002c

    const-string v2, "call_capture_noti_176x144.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    const-string v0, "data/data/com.android.incallui/files/call_recording_noti_176x144.jpg"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "data/data/com.android.incallui/files/call_recording_noti_176x144.jpg"

    const v1, 0x7f020051

    const-string v2, "call_recording_noti_176x144.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method private createImage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentCameraId()I
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCurrentCameraId(Lcom/android/incallui/Call;)I

    move-result v1

    return v1
.end method

.method private getCurrentCameraId(Lcom/android/incallui/Call;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->getCurrentCameraId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getIMSCallType()I
    .locals 4

    const/4 v3, 0x2

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getVideoResolution()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v0, 0xa

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getVideoResolution()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getVideoResolution()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    const/16 v0, 0x1b

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getVideoResolution()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    const/16 v0, 0x1c

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;
    .locals 2

    const-class v1, Lcom/android/incallui/secservice/SecVideoCallManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/secservice/SecVideoCallManager;->sVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-direct {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;-><init>()V

    sput-object v0, Lcom/android/incallui/secservice/SecVideoCallManager;->sVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    :cond_0
    sget-object v0, Lcom/android/incallui/secservice/SecVideoCallManager;->sVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSupportedAudio()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method private getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoFileNameFromUri : Uri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v12

    goto :goto_0

    :catch_1
    move-exception v8

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private handleHeldVideo(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCallbySessionId(I)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isHoldPreview()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isHeldVideo()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v4}, Lcom/android/incallui/secui/SecCall;->setHeldVideo(Z)V

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->onHeldVideo(Lcom/android/incallui/Call;)V

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eq v0, v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    const-string v3, "update_video_quickpanel_text"

    invoke-static {v3, v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleHeldVideo - isHeldVideo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isHeldVideo()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method private handleResumedVideo(I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCallbySessionId(I)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isHeldVideo()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Lcom/android/incallui/secui/SecCall;->setHeldVideo(Z)V

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->onResumeVideo(Lcom/android/incallui/Call;)V

    const/4 v1, 0x1

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eq v0, v5, :cond_1

    const/4 v1, 0x0

    :cond_1
    const-string v5, "update_video_quickpanel_text"

    invoke-static {v5, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleResumedVideo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isHeldVideo()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method private internalSendStillImage()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const-string v1, "data/data/com.android.incallui/files/preset_defaultimage_vga.jpg"

    iget-object v7, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preset_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preset_path"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendStillImage preset_Name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    if-eqz v3, :cond_1

    const-string v7, "photo"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iput v10, v7, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_8

    const-string v7, "video"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preset_video_path"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :cond_2
    if-eqz v6, :cond_3

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->showVideo(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/16 v8, 0x8

    iput v8, v7, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    const-string v7, "sendStillImage: uriString is Null,"

    invoke-direct {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :cond_5
    if-nez v6, :cond_6

    const-string v7, "sendStillImage: videoUri is Null,"

    invoke-direct {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :cond_6
    if-nez v5, :cond_7

    const-string v7, "sendStillImage: videoPath is null,"

    invoke-direct {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :cond_7
    const-string v7, "sendStillImage: so setting Default Image"

    invoke-direct {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const-string v7, "data/data/com.android.incallui/files/preset_defaultimage_qcif.jpg"

    invoke-virtual {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iput v9, v7, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    goto :goto_0

    :cond_8
    const-string v7, "sendStillImage ::preset_Name is Null "

    invoke-direct {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const-string v7, "data/data/com.android.incallui/files/preset_defaultimage_qcif.jpg"

    invoke-virtual {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iput v9, v7, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCapturedLocalFile()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCapturedLocalFile()Ljava/lang/String;

    move-result-object v1

    sget-boolean v7, Lcom/android/incallui/secservice/SecVideoCallManager;->ENG:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendStillImage imagePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    :cond_c
    if-eqz v3, :cond_e

    const-string v7, "photo"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_e

    if-eqz v2, :cond_e

    move-object v1, v2

    iget-object v7, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iput v10, v7, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    :goto_1
    sget-boolean v7, Lcom/android/incallui/secservice/SecVideoCallManager;->ENG:Z

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendStillImage imagePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v0

    const-string v7, "QCIF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v1, "data/data/com.android.incallui/files/preset_defaultimage_qcif.jpg"

    :goto_2
    iget-object v7, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iput v9, v7, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    goto :goto_1

    :cond_f
    const-string v7, "QVGALAND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v1, "data/data/com.android.incallui/files/preset_default_image_qvga.jpg"

    goto :goto_2

    :cond_10
    const-string v7, "QVGA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v1, "data/data/com.android.incallui/files/preset_defaultimage_vga.jpg"

    goto :goto_2

    :cond_11
    const-string v7, "VGALAND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v1, "data/data/com.android.incallui/files/preset_defaultimage_vga_land.jpg"

    goto :goto_2

    :cond_12
    const-string v1, "data/data/com.android.incallui/files/preset_defaultimage_vga.jpg"

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SecVideoCallManager"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "SecVideoCallManager"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private mediaScan(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/incallui/secservice/SecVideoCallManager$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/secservice/SecVideoCallManager$5;-><init>(Lcom/android/incallui/secservice/SecVideoCallManager;)V

    invoke-static {v1, v0, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method private needToShowIncomingHideMeImage()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getVideoResolution()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCapturedLocalFile()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToShowPreviewAsGrayImage()Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    iget v2, v3, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->needToShowPreviewAsGrayImage(I)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private needToShowPreviewAsGrayImage(I)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    and-int/2addr v1, p1

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToShowPreviewAsGrayImage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToShowVideoAsGrayImage()Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    iget v2, v3, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->needToShowVideoAsGrayImage(I)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private needToShowVideoAsGrayImage(I)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    and-int/2addr v1, p1

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    and-int/2addr v1, p1

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v1, p1

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToShowVideoAsGrayImage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCameraInfo(II)V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x4

    if-ne p2, v2, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    if-ne p2, v1, :cond_3

    if-eq p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x7f0d020a

    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyQualityInfo(II)V
    .locals 13

    const-string v10, "feature_skt"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    const-string v10, "feature_ktt"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v10, "feature_lgt"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const-string v10, "QCIF"

    if-ne v9, v10, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isDeviceOn3G()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x6

    if-ne p2, v10, :cond_0

    const/4 v10, 0x6

    if-ne p1, v10, :cond_1

    :cond_0
    const/4 v10, 0x4

    if-ne p2, v10, :cond_7

    const/4 v10, 0x4

    if-eq p1, v10, :cond_7

    :cond_1
    const/4 v4, 0x1

    :goto_0
    const-string v10, "QCIF"

    if-ne v9, v10, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isDeviceOnLTE()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x3

    if-ne p2, v10, :cond_8

    const/4 v10, 0x6

    if-eq p1, v10, :cond_2

    const/4 v10, 0x4

    if-ne p1, v10, :cond_8

    :cond_2
    const/4 v3, 0x1

    :goto_1
    const-string v10, "QVGA"

    if-eq v9, v10, :cond_3

    const-string v10, "QVGALAND"

    if-ne v9, v10, :cond_9

    :cond_3
    const/4 v10, 0x3

    if-ne p2, v10, :cond_9

    const/4 v10, 0x6

    if-eq p1, v10, :cond_4

    const/4 v10, 0x4

    if-ne p1, v10, :cond_9

    :cond_4
    const/4 v5, 0x1

    :goto_2
    const/4 v0, 0x0

    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "videocallmessage_settings"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_a

    const/4 v0, 0x0

    :cond_5
    :goto_3
    if-nez v0, :cond_d

    :cond_6
    :goto_4
    return-void

    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    :cond_a
    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    if-eqz v1, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    if-eqz v2, :cond_5

    if-nez v7, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    if-eqz v4, :cond_e

    if-eqz v6, :cond_11

    const v8, 0x7f0d02c7

    :cond_e
    :goto_5
    if-eqz v3, :cond_f

    if-eqz v6, :cond_13

    const v8, 0x7f0d02c6

    :cond_f
    :goto_6
    if-eqz v5, :cond_10

    if-eqz v6, :cond_15

    const v8, 0x7f0d02c6

    :cond_10
    :goto_7
    const/4 v10, -0x1

    if-eq v8, v10, :cond_6

    invoke-virtual {p0, v8}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(I)V

    goto :goto_4

    :cond_11
    if-eqz v1, :cond_12

    const v8, 0x7f0d025d

    goto :goto_5

    :cond_12
    const v8, 0x7f0d02c9

    goto :goto_5

    :cond_13
    if-eqz v1, :cond_14

    const v8, 0x7f0d025c

    goto :goto_6

    :cond_14
    const v8, 0x7f0d02c8

    goto :goto_6

    :cond_15
    if-eqz v1, :cond_16

    const v8, 0x7f0d025b

    goto :goto_7

    :cond_16
    const v8, 0x7f0d02c8

    goto :goto_7
.end method

.method private onHeldVideo(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {v0, p1}, Lcom/android/incallui/secservice/SecVideoCall;->updateVideoState(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->onNotifyVideoStateChanged()V

    :cond_0
    return-void
.end method

.method private onResumeVideo(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {v0, p1}, Lcom/android/incallui/secservice/SecVideoCall;->updateVideoState(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->onNotifyVideoStateChanged()V

    :cond_0
    return-void
.end method

.method private registerLowMemoryListener()V
    .locals 3

    const-string v1, "registerLowMemoryListener"

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mLowMemoryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsLowMemoryListenerRegistered:Z

    return-void
.end method

.method private registerResponseReceiver()V
    .locals 3

    const-string v1, "registerResponseReceiver"

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsResponseReceiver:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_PICK_IMAGE_BITMAP_FROM_GALLERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_PICK_IMAGE_FILE_FROM_GALLERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_PICK_VIDEO_FROM_GALLERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsResponseReceiver:Z

    :cond_0
    return-void
.end method

.method private requestLowFPS(Z)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request low FPS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsLowFPSRequested:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsLowFPSRequested:Z

    const-string v1, "Send low FPS intent"

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "Phone_vtCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_2

    if-gt v2, p2, :cond_2

    if-le v0, p3, :cond_0

    :cond_2
    int-to-float v3, p2

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p3

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int p2, v3

    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int p3, v3

    rem-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_3

    add-int/lit8 p2, p2, 0x1

    :cond_3
    rem-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_4

    add-int/lit8 p3, p3, 0x1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeBitmap ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {p1, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/16 v1, 0xb0

    const/16 v0, 0x90

    const-string v2, "VGA"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x1e0

    const/16 v0, 0x280

    :cond_1
    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "VGALAND"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x280

    const/16 v0, 0x1e0

    goto :goto_1

    :cond_3
    const-string v2, "QVGALAND"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x140

    const/16 v0, 0xf0

    goto :goto_1

    :cond_4
    const-string v2, "QVGA"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xf0

    const/16 v0, 0x140

    goto :goto_1
.end method

.method private setCurrentCameraId(I)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCurrentCameraId(Lcom/android/incallui/Call;I)V

    return-void
.end method

.method private setCurrentCameraId(Lcom/android/incallui/Call;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/incallui/secui/SecCall;->setCurrentCameraId(I)V

    :cond_0
    return-void
.end method

.method private setFpsRange(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getNegotiatedFPS()I

    move-result v6

    mul-int/lit16 v5, v6, 0x3e8

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v1, v6, v8

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/4 v7, 0x0

    aget v2, v6, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Supported FPS range = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    if-ne v1, v2, :cond_0

    if-gt v1, v5, :cond_0

    if-gt v0, v1, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Best FPS range for the negotiated FPS of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :goto_1
    return-object p1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Best FPS range for the negotiated FPS of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private setVTMode(Lcom/android/incallui/Call;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVTMode:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVTMode:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVTMode:I

    goto :goto_0
.end method

.method private showMemoryFullAlert()V
    .locals 1

    const-string v0, "showMemoryFullAlert"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const v0, 0x7f0d0209

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(I)V

    return-void
.end method

.method private showVideo(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside show video condition and file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->sendVideo(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V

    :cond_0
    return-void
.end method

.method private showVideoRecordFileName(Ljava/lang/String;Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVideoRecordFileName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0206

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0205

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopRecordingAudio()V
    .locals 1

    const-string v0, "In stopRecordingAudio"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterLowMemoryListener()V
    .locals 3

    const-string v1, "unRegisterLowMemoryListener"

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsLowMemoryListenerRegistered:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mLowMemoryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsLowMemoryListenerRegistered:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterResponseReceiver()V
    .locals 3

    const-string v1, "unregisterResponseReceiver"

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsResponseReceiver:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsResponseReceiver:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateIncomingVideoCallButton()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateIncomingHideButton()V

    return-void
.end method

.method private updateSelectedImageFromGallery(Landroid/graphics/Bitmap;)V
    .locals 8

    const/16 v3, 0x4b

    const-string v0, "data/data/com.android.incallui/files/during_vt_photo.jpg"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/user/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/com.android.incallui/files/during_vt_photo.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v5, "outgoing_image_from_gallery"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 v3, 0x64

    :cond_1
    if-nez p1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolution ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " X "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const-string v6, "during_vt_photo.jpg"

    iget-object v7, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v5, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasAliveVideoCall()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->updateSelectedImageFromGallery(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateSelectedImageFromGallery(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->updateVideoCallButtons()V

    const-string v0, "outgoing_image_from_gallery"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->updateIncomingVideoCallButton()V

    :cond_0
    return-void
.end method

.method private updateSelectedVideoFromGallery(Landroid/net/Uri;)V
    .locals 8

    const/4 v3, 0x0

    const-string v0, "Response from MediaStore"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "Response from MediaStore  VTPM_VIDEO_REQ"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVideoProj:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mSelectedVideoFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of video filepath  VTPM_VIDEO_REQ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mSelectedVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mSelectedVideoFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->showVideo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVideoProj:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    :cond_4
    const v0, 0x7f0d0216

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(I)V

    const-string v0, "mVideoSelectedFromGalary is null"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateVideoCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method


# virtual methods
.method public GetValidFileName(Z)Ljava/lang/String;
    .locals 10

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Videocall/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Directory is not in sdcard. Create new folder : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "VT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ".3gp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    const-string v6, "Directory is in sdcard already"

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "VT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public addListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVideoCallListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canUpdateVTSpeakerState()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelPauseActivityTimer()V
    .locals 2

    const/16 v1, 0x2bc

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public captureSurfaceImage(Z)V
    .locals 6

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getIMSCallType()I

    move-result v0

    if-gez v0, :cond_1

    sget-boolean v4, Lcom/android/incallui/secservice/SecVideoCallManager;->ENG:Z

    if-eqz v4, :cond_0

    const-string v4, "captureSurfaceImage failed. IMS callType is not valid "

    invoke-direct {p0, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v4, p1, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->captureSurfaceImage(ZI)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v3, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    const-string v4, "QCIF"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/16 v5, 0x100

    invoke-interface {v4, v3, v5, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendStillImage(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/4 v5, 0x7

    iput v5, v4, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string v4, "QVGA"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "QVGALAND"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v3, "data/data/com.android.incallui/files/video_call_capture_vga.jpg"

    goto :goto_2

    :cond_6
    const-string v3, "data/data/com.android.incallui/files/video_call_capture_vga.jpg"

    goto :goto_2
.end method

.method public capture_farend_view()Z
    .locals 7

    const/4 v3, 0x0

    const/16 v6, 0x12c

    const-string v2, "In capture_farend_view method"

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->checkStorageMemorySpace(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v2, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    invoke-virtual {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture File Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const v2, 0x7f0d0202

    invoke-virtual {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(I)V

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaScan(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->showMemoryFullAlert()V

    goto :goto_0
.end method

.method public checkAndSetPreview(Lcom/android/incallui/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secondIncoming : activeCall["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] incoming["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecModifyCallProcessor;->rejectModifyCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->holdPreview(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isForegroundActivity()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->onPauseActivity()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->resumePreview(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public checkStorageMemorySpace(Z)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v2, Ljava/io/File;

    const-string v6, "/sdcard/"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x400

    div-long v0, v6, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Memory Size Avialable is in Kb : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-wide/16 v6, 0x2710

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x3e8

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public cleanUpSurfaceTexture()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    return-void
.end method

.method cleanupCall()V
    .locals 1

    const-string v0, "cleanupCall for CS VT"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->cleanupCall()V

    :cond_0
    return-void
.end method

.method public closeCamera()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->closeCamera()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeIMSMedia(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x1

    const-string v1, "closeIMSMedia"

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVTMode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    if-ne v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->stopCameraPreview()V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->closeCamera()V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->mediaDeInit()V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public displayCallDownGradedToast()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    :cond_0
    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02f3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02f2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public displayToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public displayToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public dualCamera(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dualCamera : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCanOpenDualCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0d0208

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;-><init>(Lcom/android/incallui/secservice/SecVideoCallManager;Lcom/android/incallui/secservice/SecVideoCallManager$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x190

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->removeDualCameraMsg()V

    goto :goto_0
.end method

.method public enterVideoMode(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eq v1, p1, :cond_6

    const-string v1, "enterVideoMode - primary call changed"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->createDefaultImages()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->initializeVideoMode(Lcom/android/incallui/Call;)V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCurrentCameraId(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mFrontCameraId:I

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCurrentCameraId(Lcom/android/incallui/Call;I)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setVTMode(Lcom/android/incallui/Call;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->startMedia()V

    :cond_3
    :goto_1
    const-string v1, "concept_usa_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->checkAndSetPreview(Lcom/android/incallui/Call;)V

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->requestLowFPS(Z)V

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    if-ne v1, v2, :cond_1

    const-string v1, "enterVideoMode - VideoState is VIDEO_NONE"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaInitCS()V

    goto :goto_1
.end method

.method public exitVideoMode(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "exitVideoMode"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->checkAndSetPreview(Lcom/android/incallui/Call;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCall;->exit()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopMedia()V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->closeIMSMedia(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->requestLowFPS(Z)V

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosedbyDcm:Z

    iput v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVTMode:I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/secui/SecCall;->setHeldVideo(Z)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/secui/SecCall;->setHoldPreview(Z)V

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCurrentCameraId(Lcom/android/incallui/Call;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecording()V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCall;->initialize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->cleanUpSurfaceTexture()V

    goto :goto_1
.end method

.method public finalizeVideoCall(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 2

    const-string v0, "finalizeVideoCall"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasAliveVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCSVTStart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopVTCall()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->cleanupCall()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaDeInitCS()V

    :cond_2
    return-void
.end method

.method public forceRemovePreparingAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    const/16 v0, 0xc9

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(II)V

    :cond_0
    return-void
.end method

.method public getAllowCamera()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, v1, Lcom/android/incallui/secservice/SecVideoCall;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBackCameraId()I
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getBackCameraId()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallbySessionId(I)Lcom/android/incallui/Call;
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->getSessionId()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v2, v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->getSessionId()I

    move-result v3

    if-ne v3, p1, :cond_1

    move-object v2, v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->getSessionId()I

    move-result v3

    if-ne v3, p1, :cond_2

    move-object v2, v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->getSessionId()I

    move-result v3

    if-ne v3, p1, :cond_3

    move-object v2, v0

    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->getSessionId()I

    move-result v3

    if-ne v3, p1, :cond_4

    move-object v2, v0

    :cond_4
    if-eqz v2, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallbySessionId found - sessionId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallbySessionId failed - sessionId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v1, Lcom/samsung/commonimsinterface/imscommon/CameraState;->PREVIEW_STARTED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCapturedLocalFile()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mCapturedLocalFile:Ljava/lang/String;

    return-object v0
.end method

.method public getFarEndSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mFarEndSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getFrontCameraId()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHandoverPending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandoverPending:Z

    return v0
.end method

.method public getNegotiatedFPS()I
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v1, 0xf

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedFPS()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedHeight()I
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v1, 0x90

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedHeight()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedWidth()I
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v1, 0xb0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedWidth()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPickedImageTempFile()Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "temp_picked_image_from_gallery.vci"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getRecordingStartTimeFarEnd()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mFarEndRecordTime:J

    return-wide v0
.end method

.method public getRecordingStartTimeNearEnd()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndRecordTime:J

    return-wide v0
.end method

.method public getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    return-object v0
.end method

.method public getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoState()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    return v0
.end method

.method holdPreview(Lcom/android/incallui/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isHoldPreview()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->getSessionId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/incallui/secui/SecCall;->setHoldPreview(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->holdVideoBySession(I)V

    :cond_0
    return-void
.end method

.method holdVideoBySession(I)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVideoBySession : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->holdVideoBySession(I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public initialize()V
    .locals 5

    const-string v3, "Instantiating SecVideoCallManager"

    invoke-direct {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const-string v3, "enabled"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    iput-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iput-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v2, Lcom/android/incallui/secservice/SecIMSMediaStateListener;

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/incallui/secservice/SecIMSMediaStateListener;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v3, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->registerForMediaStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    invoke-interface {v3, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize:RuntimeException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1
.end method

.method public initializeCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 8

    const-string v6, "Initializing camera"

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v6, "support_vt_on_pop_up_window"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCameraAppRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->moveCameraTaskToBack()V

    :cond_0
    const-string v6, "concept_usa_vzw"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "concept_usa_att"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "concept_usa_tmo"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "concept_canada_common"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    const/4 v3, 0x3

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initializing camera callType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "imsCallType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const/4 v6, 0x4

    if-ne v0, v6, :cond_2

    const-string v6, "concept_usa_vzw"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v6, v6, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v7, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    and-int/2addr v6, v7

    sget v7, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v6, v6, Lcom/android/incallui/secservice/SecVideoCall;->mFrontCameraId:I

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCurrentCameraId(I)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCurrentCameraId()I

    move-result v6

    invoke-virtual {p0, v6, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->openCamera(II)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    return-void

    :cond_3
    const/16 v3, 0x9

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v6, v6, Lcom/android/incallui/secservice/SecVideoCall;->mBackCameraId:I

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCurrentCameraId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to open camera device, error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Supported Preview Sizes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Preview Size directly with negotiated Height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getNegotiatedHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " negotiated width= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getNegotiatedWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getNegotiatedWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getNegotiatedHeight()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-direct {p0, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFpsRange(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setDisplayOrientation()V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getNegotiatedWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getNegotiatedHeight()I

    move-result v7

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->startCameraPreview(Landroid/graphics/SurfaceTexture;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->closeCamera()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while setting preview texture, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    :try_start_2
    iget-object v6, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v6, v6, Lcom/android/incallui/secservice/SecVideoCall;->mFrontCameraId:I

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCurrentCameraId(I)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCurrentCameraId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->openCamera(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_2

    :cond_8
    :try_start_3
    const-string v6, "CameraParameters is null"

    invoke-direct {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method public initializeVideoMode(Lcom/android/incallui/Call;)V
    .locals 2

    const-string v0, "initializeVideoMode"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCall;->initialize()V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getBackCameraId()I

    move-result v1

    iput v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mBackCameraId:I

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getFrontCameraId()I

    move-result v1

    iput v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mFrontCameraId:I

    return-void
.end method

.method public isCameraClosed()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v2

    sget-object v3, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isCameraEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCameraPreviewStopped()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v2

    sget-object v3, Lcom/samsung/commonimsinterface/imscommon/CameraState;->PREVIEW_STOPPED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isCameraRestricted()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getAllowCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->checkCameraStartConditionSecurity()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected isCanOpenDualCamera()Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "sys.siop.curlevel"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTemperatureLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public isCleanMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCleanMode:Z

    return v0
.end method

.method public isEPDGCall(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getEpdgCall()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEPDGCall() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method public isFarEndRecord()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarEndRecord:Z

    return v0
.end method

.method public isFarFrameReady()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarFrameReady:Z

    return v0
.end method

.method public isForegroundActivity()Z
    .locals 3

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecTabletInCallService;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletInCallService;->isForegroundActivity()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->isForegroundActivity()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLTEVideoCallMenuShow()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallMenuShow()Z

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLTEVideoCallMenuShow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method public isModifyBannerShow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsModifyBannerShow:Z

    return v0
.end method

.method public isNearEndRecord()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsNearEndRecord:Z

    return v0
.end method

.method public isScreenResized()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsScreenResized:Z

    return v0
.end method

.method public isShowMe()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowMe:Z

    return v0
.end method

.method public isShowingEffect()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowingEffect:Z

    return v0
.end method

.method public isSupported(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSurfaceViewSwipe()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsSurfaceViewSwipe:Z

    return v0
.end method

.method public isSwitchCameraClicked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsSwitchCameraClicked:Z

    return v0
.end method

.method public mediaDeInitCS()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "mediaDeInitCS :"

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->releaseVTManager()V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->deinitVTManager()V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v2}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    iput-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->removeDualCameraMsg()V

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->unRegisterLowMemoryListener()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->unregisterResponseReceiver()V

    return-void
.end method

.method public mediaDeInitPS()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "mediaDeInitPS"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->mediaDeInit()V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->unregisterResponseReceiver()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1
.end method

.method public mediaInitCS()V
    .locals 3

    const/4 v1, 0x1

    const-string v0, "mediaInitCS"

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "media was already iniailized"

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iput-boolean v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_3

    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    new-instance v1, Lcom/android/incallui/secservice/SecVTStackStateListener;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/secservice/SecVTStackStateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->registerLowMemoryListener()V

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->registerResponseReceiver()V

    goto :goto_0

    :cond_3
    const-string v0, "CS VT already mediaInit"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public mediaInitPS()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "mediaInitPS"

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->mediaInit()V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->registerResponseReceiver()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1
.end method

.method public needToStartCamera()Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v3, v3, Lcom/android/incallui/secservice/SecVideoCall;->mIsCameraReady:Z

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getSecVideoState()I

    move-result v3

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getSecVideoState()I

    move-result v3

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    if-ne v3, v4, :cond_2

    const/4 v1, 0x0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToStartCamera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return v1
.end method

.method public needToUpdateDetailsChanged(Lcom/android/incallui/Call;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v2, v2, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    iget v3, v1, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToUpdateDetailsChanged? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return v0
.end method

.method public notifyCameraEvent(I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->onNotifyMediaEvent(I)V

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsCameraReady:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "camera_fail_image"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const v1, 0x7f0d01fe

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToastLong(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsCameraReady:Z

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsCameraReady:Z

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    const-string v1, "prohibit_candid_shot"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCameraoffSmartAnswer()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->startCamera()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public notifyCameraSwitchFail(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraSwitchFail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const v0, 0x7f0d020c

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(I)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mFrontCameraId:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mBackCameraId:I

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCurrentCameraId(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mNearEndSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->initializeCamera(Landroid/graphics/SurfaceTexture;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mFrontCameraId:I

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCurrentCameraId(I)V

    goto :goto_0
.end method

.method public notifyCaptureAndRecordEvent(I)V
    .locals 6

    const v5, 0x7f0d0203

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCaptureAndRecordEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0202

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->onNotifyMediaEvent(I)V

    :cond_0
    return-void

    :sswitch_0
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->displayToastLong(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/4 v3, 0x5

    iput v3, v2, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->displayToastLong(I)V

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->displayToastLong(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->displayToastLong(I)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarEndRecord()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecordingFarEndView(Z)V

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecordingNearEndView(Z)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_2
        0x12e -> :sswitch_3
        0x12f -> :sswitch_0
        0x130 -> :sswitch_1
        0x193 -> :sswitch_4
        0x194 -> :sswitch_4
    .end sparse-switch
.end method

.method public notifyCastingEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCastingEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0d0216

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendLiveVideo()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x25c
        :pswitch_0
    .end packed-switch
.end method

.method public notifyVideoCallEvent(I)V
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyVideoCallEvent state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->onNotifyMediaEvent(I)V

    :cond_1
    return-void

    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarFrameReady(Z)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->IsTelkomSelIndonesiaOperator()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "notifyVideoCallEvent: keep current Call state for special operator of Exception handling[H324M_VT_PROTOCOL_ERR_IND]"

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0xd0 -> :sswitch_1
    .end sparse-switch
.end method

.method public notifyVideoCallEvent(II)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVideoCallEvent state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sessionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->onNotifyMediaEvent(I)V

    :cond_0
    return-void

    :sswitch_0
    invoke-virtual {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarFrameReady(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p2}, Lcom/android/incallui/secservice/SecVideoCallManager;->handleResumedVideo(I)Z

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/incallui/secservice/SecVideoCallManager;->handleHeldVideo(I)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0xd6 -> :sswitch_2
        0xd7 -> :sswitch_1
    .end sparse-switch
.end method

.method public notifyVideoCallEvent(ILsiso/vt/VideoTelephonyData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoCallEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onDelayedPauseActivity()V
    .locals 3

    const-string v1, "concept_usa_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->startPauseActivityTimer()V

    :cond_0
    return-void
.end method

.method public onModifiedCall(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "onModifiedCall"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mNeedToShowModifyAnimation:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_0
    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mNeedToShowModifyAnimation:Z

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mNeedToShowModifyAnimation:Z

    goto :goto_0
.end method

.method public onNotifyMediaEvent(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyMediaEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVideoCallListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-interface {v1, v2, p1}, Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;->notifyMediaEvent(Lcom/android/incallui/secservice/SecVideoCall;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotifyVideoStateChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    if-eqz v2, :cond_0

    const-string v2, "onNotifyVideoStateChanged"

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVideoCallListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-interface {v1, v2}, Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;->onSecVideoStateChanged(Lcom/android/incallui/secservice/SecVideoCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPauseActivity()V
    .locals 3

    const-string v1, "concept_usa_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->holdPreview(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onReceivedMessageFromTelecom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedMessageFromTelecom :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const-string v0, "onIncomingCallAnswered"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->internalSendStillImage()V

    :cond_0
    return-void
.end method

.method public onResumeActivity()V
    .locals 4

    const-string v1, "concept_usa_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->cancelPauseActivityTimer()V

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isHoldPreview()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v1, v2

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v1, v2

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->resumePreview(Lcom/android/incallui/Call;)V

    :cond_2
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {p3, v1, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCall;->updateCommonFromCall(Lcom/android/incallui/Call;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->onStateChange_CS(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->onStateChange_PS(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onStateChange_CS(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange_CS - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    if-eqz p3, :cond_6

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/secservice/SecVideoCall;->updateCallType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/secservice/SecVideoCall;->updateCallState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/incallui/secservice/SecVideoCallManager;->transitCallState(Lcom/android/incallui/Call;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {v1, p3}, Lcom/android/incallui/secservice/SecVideoCall;->updateVideoState(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->onNotifyVideoStateChanged()V

    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_5

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsCSVTStart:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->startVTCall()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsCSVTStart:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopVTCall()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsCSVTStart:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopVTCall()V

    goto :goto_0

    :cond_7
    if-nez p3, :cond_4

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->cleanupCall()V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaDeInitCS()V

    goto :goto_0
.end method

.method public onStateChange_PS(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCall;->updateCallType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Lcom/android/incallui/secservice/SecVideoCallManager;->onModifiedCall(Lcom/android/incallui/Call;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCall;->updateCallState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/incallui/secservice/SecVideoCallManager;->transitCallState(Lcom/android/incallui/Call;)V

    :cond_3
    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {v0, p3}, Lcom/android/incallui/secservice/SecVideoCall;->needToHideVideoStateMessage(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    invoke-virtual {v0, p3}, Lcom/android/incallui/secservice/SecVideoCall;->updateVideoState(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/secservice/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->controlModifyReceiveTimer(I)V

    const-string v0, "prohibit_candid_shot"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosedbyDcm:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopCameraPreview()V

    goto/16 :goto_0
.end method

.method public onWindowRotationChanged(IZ)V
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v3

    iget v3, v3, Lcom/android/incallui/secservice/SecVideoCall;->mCurrentRotation:I

    if-eq v3, p1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowRotationChanged rotation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRotated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallType()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotationOnlyCamera()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraDisplayOrientation(I)V

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIsScreenRotated:Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized openCamera(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getIMSCallType()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->openCamera(II)Z
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized openCamera(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2, p1, p2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->openCamera(II)Z
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeDualCameraMsg()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mVideoCallListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resumePreview(Lcom/android/incallui/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isHoldPreview()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->getSessionId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/secui/SecCall;->setHoldPreview(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->resumeVideoBySession(I)V

    :cond_0
    return-void
.end method

.method resumeVideoBySession(I)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeVideoBySession : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->resumeVideoBySession(I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public selectOutgoingImageFromMyFiles()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v5, "In selectOutgoingImageFromMyFiles method"

    invoke-direct {p0, v5, v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/android/incallui/secutils/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    const-string v5, "External Media is present"

    invoke-direct {p0, v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/incallui/secutils/PickImageFromGallery;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "senderIsVideoCall"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "imageSelected"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "outgoing_image_from_gallery"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v0

    const-string v5, "resolution"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/android/incallui/secservice/SecVideoCallManager;->checkStorageMemorySpace(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "return_file"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "file_path"

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getPickedImageTempFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v5, 0x14000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/incallui/SecTabletInCallService;->dismissInCallMenu()V

    invoke-virtual {v4, v8, v8}, Lcom/android/incallui/SecTabletInCallService;->showServiceViews(ZZ)V

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public selectVideoFromMyFiles()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "In selectVideoFromMyFiles method"

    invoke-direct {p0, v2, v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/android/incallui/secutils/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/secutils/PickImageFromGallery;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "senderIsVideoCall"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "imageSelected"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletInCallService;->dismissInCallMenu()V

    invoke-virtual {v1, v4, v4}, Lcom/android/incallui/SecTabletInCallService;->showServiceViews(ZZ)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v2, "Out selectVideoFromMyFiles method"

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public sendDTMF(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "sendDTMF for VT"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1, p2}, Lsiso/vt/VTManager;->sendDTMF(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public sendLiveVideo()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->needToShowIncomingHideMeImage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/secui/SecUiAdapter;->showIncomingHideMeImage(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iput v3, v1, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1}, Lsiso/vt/VTManager;->sendLiveVideo()V

    invoke-virtual {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendLiveVideo()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendStillImage()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->needToShowIncomingHideMeImage()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/secui/SecUiAdapter;->showIncomingHideMeImage(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->internalSendStillImage()V

    goto :goto_0
.end method

.method public sendStillImage(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendStillImage file path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const-string v1, "QVGA"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v3, p1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    const-string v3, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "data/data/com.android.incallui/files/call_recording_noti_176x144.jpg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    const-string v3, ".vci"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v3, :cond_0

    :try_start_0
    const-string v3, "common_volte_in"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/16 v4, 0x100

    invoke-interface {v3, p1, v4, v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendStillImage(Ljava/lang/String;ILjava/lang/String;I)V

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/16 v4, 0x100

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v4, v5, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendStillImage(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method setCameraDisplayOrientation(I)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraDisplayOrientation orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const-string v2, "volte_jpn_orientation_feature"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "ril.ims.rotation"

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accelerometer_rotation"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "false"

    :goto_0
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    if-ne v2, v7, :cond_5

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const-string v3, "multiwindow_facade"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCurrentOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setCameraDisplayOrientation(I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    iput p1, v2, Lcom/android/incallui/secservice/SecVideoCall;->mCurrentRotation:I

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v2, "true"

    goto :goto_0

    :pswitch_1
    if-eq p1, v6, :cond_3

    if-ne p1, v8, :cond_1

    goto :goto_2

    :pswitch_2
    if-eqz p1, :cond_3

    if-ne p1, v7, :cond_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotationOnlyCamera()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v2, :cond_2

    packed-switch p1, :pswitch_data_1

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v2, v6}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v2, "sVideoCallManager.log(VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v2, v6}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v2, "sVideoCallManager.log(VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v2, "sVideoCallManager.log(VTManager.VT_ORIENTATION_LANDSCAPE_BOTTOM"

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v2, v8}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v2, "sVideoCallManager.log(VTManager.VT_ORIENTATION_PORTAIT_BOTTOM"

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v2, v7}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v2, "sVideoCallManager.log(VTManager.VT_ORIENTATION_LANDSCAPE_TOP"

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setCameraEffect(I)V
    .locals 4

    const/4 v3, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraEffect type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setCameraEffect(I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xf

    if-gt p1, v1, :cond_2

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraParameters(II)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v3, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraParameters(II)V

    goto :goto_0
.end method

.method public setCameraOnOff(ZZ)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraOnOff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraPreviewStopped()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->startCameraPreview()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopCameraPreview()V

    goto :goto_0

    :cond_3
    const-string v1, "prohibit_candid_shot"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowMe:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraPreviewStopped()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_5
    if-nez p2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosedbyDcm:Z

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->startCameraPreview()V

    const v1, 0x7f0d0336

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosedbyDcm:Z

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopCameraPreview()V

    const v1, 0x7f0d0335

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public setCameraParameters(II)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1, p2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    :cond_0
    return-void
.end method

.method public setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCapturedLocalFile(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-object p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mCapturedLocalFile:Ljava/lang/String;

    return-void
.end method

.method public setCleanMode(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCleanMode:Z

    return-void
.end method

.method public setDisplayOrientation()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayOrientation  display rotation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mCurrentRotation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v3

    iget v3, v3, Lcom/android/incallui/secservice/SecVideoCall;->mCurrentRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    iget v2, v2, Lcom/android/incallui/secservice/SecVideoCall;->mCurrentRotation:I

    if-eq v2, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraDisplayOrientation(I)V

    :cond_0
    return-void
.end method

.method public setDualCameraEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsDualCameraEnabled:Z

    return-void
.end method

.method public setFarEndRecord(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarEndRecord:Z

    return-void
.end method

.method public setFarEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;
    .locals 6

    const/4 v5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFarEndSurface surfaceTexture : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mFarEndSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v3

    if-ne v3, v5, :cond_2

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v3, :cond_0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v3, v1, p2, p3}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v3}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v3, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    if-eqz p1, :cond_0

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->needToShowVideoAsGrayImage()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public setFarFrameReady(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarFrameReady:Z

    return-void
.end method

.method public setModifyBannerShow(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsModifyBannerShow:Z

    return-void
.end method

.method public setNearEndRecord(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsNearEndRecord:Z

    return-void
.end method

.method public setNearEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;
    .locals 7

    const/4 v6, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNearEndSurface surfaceTexture : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mNearEndSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_2

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setDisplayOrientation()V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v4

    if-ne v4, v6, :cond_4

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v4, v4, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaInitCS()V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v4, :cond_1

    move v3, p2

    move v2, p3

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/incallui/secservice/SecVideoCallManager$2;

    invoke-direct {v5, p0, v1, v3, v2}, Lcom/android/incallui/secservice/SecVideoCallManager$2;-><init>(Lcom/android/incallui/secservice/SecVideoCallManager;Landroid/view/Surface;II)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopCameraPreview()V

    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v4}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->needToStartCamera()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->startMedia()V

    :cond_5
    :goto_2
    const-string v4, "concept_usa_vzw"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->needToShowPreviewAsGrayImage()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setDisplay(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v4, :cond_5

    :try_start_1
    iget-object v4, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v4, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setDisplay(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_2
.end method

.method public setScreenResized(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsScreenResized:Z

    return-void
.end method

.method public setShowMe(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowMe:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->updateVideoCallButtons()V

    return-void
.end method

.method public setShowingEffect(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowingEffect:Z

    return-void
.end method

.method public setSurfaceViewSwipe(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsSurfaceViewSwipe:Z

    return-void
.end method

.method public setSwitchCameraClicked(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsSwitchCameraClicked:Z

    return-void
.end method

.method public showNearEndVideo()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->showNearEndVideo(I)V

    return-void
.end method

.method public showNearEndVideo(I)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showNearEndVideo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    const-string v0, "data/data/com.android.incallui/files/during_vt_photo.jpg"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/com.android.incallui/files/during_vt_photo.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendLiveVideo()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/secservice/SecVideoCall;->mCapturedLocalFile:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->showVideo(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/secservice/SecVideoCall;->mSelectedVideoFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->showVideo(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public startCamera()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->needToStartCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mNearEndSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->initializeCamera(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public startCameraPreview()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "mIMSInterface:startCameraPreview called"

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mNearEndSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getNegotiatedWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getNegotiatedHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public startCameraPreview(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2, p2, p3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move-object v0, p1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/incallui/secservice/SecVideoCallManager$3;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager$3;-><init>(Lcom/android/incallui/secservice/SecVideoCallManager;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public startMedia()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaInitPS()V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->startCamera()V

    return-void
.end method

.method public startPauseActivityTimer()V
    .locals 4

    const/16 v1, 0x2bc

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected startRecordingAudio()V
    .locals 1

    const-string v0, "Enter into Start Audio Recording Method..."

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public startRecordingFarEndView()Z
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x12c

    const/4 v6, 0x1

    const-string v2, "Enter into Start Far End Recording Method..."

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x258

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->checkStorageMemorySpace(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Already Far End Recording in Process"

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    :goto_0
    const-string v2, "End of Start Far End Recording Method..."

    invoke-direct {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/incallui/secservice/SecVideoCall;->mFarEndRecordTime:J

    const-string v2, "vt_audio_mixed_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/secservice/SecVideoCall;->mRecordingFileName:Ljava/lang/String;

    const-string v2, "vt_audio_mixed_recording_via_stack"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    or-int/lit8 v0, v8, 0x1

    :goto_2
    const-string v2, "vt_audio_mixed_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "vt_audio_mixed_recording_via_stack"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->startRecordingAudio()V

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarEndRecord(Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "data/data/com.android.incallui/files/call_recording_noti_176x144.jpg"

    invoke-virtual {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    or-int/lit8 v0, v8, 0x8

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v3

    iget-object v3, v3, Lcom/android/incallui/secservice/SecVideoCall;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->showMemoryFullAlert()V

    goto :goto_0
.end method

.method startVTCall()V
    .locals 2

    const-string v0, "startVTCall for CS VT"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCSVTStart:Z

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StartVTCall(Z)V

    :cond_0
    return-void
.end method

.method public stopCamera()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCameraReady:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopCameraPreview()V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->closeCamera()V

    :cond_1
    return-void
.end method

.method public stopCameraPreview()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1}, Lsiso/vt/VTManager;->stopCamera()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->stopCameraPreview()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopMedia()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopCamera()V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaDeInitPS()V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecordingFarEndView(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecordingNearEndView(Z)V

    goto :goto_0
.end method

.method public stopRecordingFarEndView(Z)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v2, 0x0

    const-string v1, "In stopRecordingFarEndView"

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_2

    const-string v1, "vt_audio_mixed_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "vt_audio_mixed_recording_via_stack"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecordingAudio()V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarEndRecord(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getRecordingStartTimeFarEnd()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const-string v1, "vt_audio_mixed_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "vt_audio_mixed_recording_via_stack"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaScan(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->StopRecording(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getRecordingStartTimeFarEnd()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->showVideoRecordFileName(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public stopRecordingNearEndView(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StopRecording(Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->setNearEndRecord(Z)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndRecordingFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->showVideo(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowMe(Z)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->showVideoRecordFileName(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaScan(Ljava/lang/String;)V

    const-string v0, "Out stop_recording"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method stopVTCall()V
    .locals 2

    const-string v0, "stopVTCall for CS VT"

    invoke-direct {p0, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecording()V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->StopVTCall()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCSVTStart:Z

    return-void
.end method

.method public switchCamera()V
    .locals 6

    const/16 v5, 0x69

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v1, "This is inside CallVtScreen switchCamera method"

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsFrontCameraEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCameraEvent(I)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v4, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsFrontCameraEnabled:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v4, v3}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    invoke-virtual {p0, v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCameraEvent(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsFrontCameraEnabled:Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->switchCamera()V

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getCurrentCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v2, v2, Lcom/android/incallui/secservice/SecVideoCall;->mFrontCameraId:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mBackCameraId:I

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCurrentCameraId(I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mFrontCameraId:I

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCurrentCameraId(I)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public transitCallState(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x3

    const-string v0, "transitCallState "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mIsVideoCall:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_1
    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->resumePreview(Lcom/android/incallui/Call;)V

    :cond_2
    :goto_0
    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->checkAndNotifyInfo()V

    :cond_3
    const-string v0, "overlay_popup_play"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->checkAndShowVideoPopup()V

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;

    iget v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->checkAndSetPreview(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method
