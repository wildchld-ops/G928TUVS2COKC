.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final FLASH_ANNOTATE_CLASS_NAME:Ljava/lang/String; = "com.sec.spen.flashannotate.FlashAnnotateActivity"

.field private static final FLASH_ANNOTATE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.spen.flashannotate"

.field private static final PAPER_ARTIST_CLASS_NAME:Ljava/lang/String; = "com.dama.paperartist.PaperArtistActivity"

.field private static final PAPER_ARTIST_PACKAGE_NAME:Ljava/lang/String; = "com.dama.paperartist"

.field private static final PHOTO_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.PhotoRetouching"

.field private static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final PSTOUCH_CLASS_NAME:Ljava/lang/String; = "air.com.adobe.pstouch.oem1.AppEntry"

.field private static final PSTOUCH_PACKAGE_NAME:Ljava/lang/String; = "air.com.adobe.pstouch.oem1"

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_SHARE_SUBJECT_TEMPLATE:Ljava/lang/String; = "Screenshot (%s)"

.field private static final TAG:Ljava/lang/String; = "SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field private currentUserHandle:Landroid/os/UserHandle;

.field mAm:Landroid/app/IActivityManager;

.field mContext:Landroid/content/Context;

.field private mDegree:F

.field private mDisplayNotiIcon:Z

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mIsBasedLandscape:Z

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private mScreenCaptureTime:Ljava/lang/String;

.field private mScreenCaptureType:I

.field private final mScreenshotDir:Ljava/io/File;

.field private mScreepshotsSaveFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 28

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v23, Landroid/os/Binder;

    invoke-direct/range {v23 .. v23}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget-object v23, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "2.0"

    const-string v24, "version"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "persona"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PersonaManager;

    invoke-virtual {v11}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v7

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    :cond_0
    const-string v23, "ro.build.scafe"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v23, "capuccino"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1

    const-string v23, "latte"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    :cond_1
    sget-object v23, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreepshotsSaveFolder:Ljava/lang/String;

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v25

    const/16 v26, 0x1

    invoke-interface/range {v23 .. v26}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    const-string v23, "SaveImageInBackgroundTask"

    const-string v24, "SaveImageInBackgroundTask setProcessForeground true"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    new-instance v23, Ljava/text/SimpleDateFormat;

    const-string v24, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct/range {v23 .. v24}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v24, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v23 .. v24}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    const-string v23, "Screenshot_%s.png"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v10, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreepshotsSaveFolder:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    const-string v25, "Screenshots"

    invoke-direct/range {v23 .. v25}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->screenCaptureType:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureType:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->isBasedLandscape:Z

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->degree:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v19, v0

    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v23

    move/from16 v0, v19

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    new-instance v8, Landroid/graphics/ColorMatrix;

    invoke-direct {v8}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v23, 0x3e800000    # 0.25f

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const/16 v23, 0x80

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v23, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v23, v0

    sub-int v23, v19, v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v24, v0

    sub-int v24, v19, v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/high16 v23, 0x4c000000    # 3.3554432E7f

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-static {v0, v9, v9, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-boolean v23, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v23, :cond_5

    const/16 v23, 0x1

    :goto_3
    sput-boolean v23, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-instance v23, Landroid/app/Notification$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v24, 0x7f0d0247

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x7f0d0248

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x7f02046e

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0442

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-lez v4, :cond_2

    move/from16 v0, v19

    if-le v0, v4, :cond_2

    sub-int v23, v19, v4

    div-int/lit8 v20, v23, 0x2

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v17

    :cond_2
    new-instance v23, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v23 .. v23}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    new-instance v23, Landroid/app/Notification$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v24, 0x7f0d0247

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x7f0d0248

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x7f02046e

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v23

    const-string v24, "progress"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    iget v0, v13, Landroid/app/Notification;->flags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x20

    move/from16 v0, v23

    iput v0, v13, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/app/NotificationManager;->cancel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    return-void

    :cond_3
    sget-object v23, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreepshotsSaveFolder:Ljava/lang/String;

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v19, v0

    goto/16 :goto_2

    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v23

    goto/16 :goto_1
.end method

.method private broadcastForLoggingApp(Landroid/content/Context;)V
    .locals 4

    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenCaptureType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImageFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenCpatureTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.scapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    iget v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "path"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "time"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isEditorAvailable()Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.mimage.photoretouching"

    const-string v4, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.dama.paperartist"

    const-string v4, "com.dama.paperartist.PaperArtistActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "air.com.adobe.pstouch.oem1"

    const-string v4, "air.com.adobe.pstouch.oem1.AppEntry"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 36

    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "SaveImageInBackgroundTask setProcessForeground doInBackground"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v30, 0x0

    :goto_0
    return-object v30

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v30

    if-eqz v30, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    move-object/from16 v31, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v32

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "SaveImageInBackgroundTask doInBackground isCancelled setProcessForeground false"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    const/16 v30, 0x0

    aget-object v30, p1, v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    const/16 v30, 0x0

    aget-object v30, p1, v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    const/16 v30, 0x0

    goto :goto_0

    :cond_1
    const/16 v30, -0x2

    invoke-static/range {v30 .. v30}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, v30

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/16 v16, 0x0

    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    div-long v8, v30, v32

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v14, :cond_a

    const/16 v30, 0x1

    :try_start_3
    sget-object v31, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v32, 0x64

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    const-string v30, "SaveImageInBackgroundTask"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "image.getByteCount() : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v30, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v30, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v30, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v30, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v30, "date_added"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v30, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v30, "mime_type"

    const-string v31, "image/png"

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v30, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v30, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v30, "_size"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v30, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v27

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v31

    new-instance v32, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v31 .. v32}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v31

    new-instance v32, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v31 .. v32}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v30, "Screenshot (%s)"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v26, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    new-instance v24, Landroid/content/Intent;

    const-string v30, "android.intent.action.SEND"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v30, Lcom/android/systemui/screenshot/ScreenshotShareActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v30, 0x10008000

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v30, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v30, "Uri"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v30, "Subject"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    const v23, 0x7f02075f

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v30, v0

    const v31, 0x7f0d0484

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move/from16 v0, v32

    move-object/from16 v1, v24

    move/from16 v2, v33

    invoke-static {v5, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    move-object/from16 v0, v30

    move/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isEditorAvailable()Z

    move-result v30

    if-eqz v30, :cond_4

    const-string v30, "%s/%s/"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "Screenshots"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-instance v13, Landroid/content/Intent;

    const-string v30, "android.intent.action.EDIT"

    move-object/from16 v0, v30

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v30, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v30, "DirPath"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v30, "degree"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v30, "isBasedLandscape"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v30, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    move-object/from16 v0, v30

    invoke-virtual {v13, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v30, 0x10008000

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3

    const v12, 0x7f02075e

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v30, v0

    const v31, 0x7f0d0483

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v5, v0, v13, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v12, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_4
    new-instance v10, Landroid/content/Intent;

    const-string v30, "android.intent.action.DELETE"

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v30, "FilePath"

    const-string v31, "%s/%s/%s"

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreepshotsSaveFolder:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    const-string v34, "Screenshots"

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v30, "currentUserHandle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-class v30, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    move-object/from16 v0, v30

    invoke-virtual {v10, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    const v7, 0x7f02075d

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v30, v0

    const v31, 0x7f0d0485

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v5, v0, v10, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    new-instance v6, Landroid/content/Intent;

    const-string v30, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v30, "copyPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v30, "noToast"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "file://"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v4, Landroid/content/Intent;

    const-string v30, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v30, "sys.iss.state"

    const-string v31, "0"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v30, "3rd"

    const-string v31, "ro.release.3rd_party"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_6

    const-string v30, "true"

    const-string v31, "ro.release.iss"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x40

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->broadcastForLoggingApp(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_7
    :goto_2
    if-eqz v20, :cond_c

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v19, v20

    move-object/from16 v16, v17

    :cond_8
    :goto_3
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    const/16 v30, 0x0

    aget-object v30, p1, v30

    goto/16 :goto_0

    :cond_a
    :try_start_5
    const-string v30, "SaveImageInBackgroundTask"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Fail to create capture image file ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v11

    move-object/from16 v19, v20

    move-object/from16 v16, v17

    :goto_4
    :try_start_6
    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "IOException-UnsupportedOperationException may be thrown if external storage is not"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    aget-object v30, p1, v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v19, :cond_8

    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v11

    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "IOException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v11

    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "IOException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v20

    move-object/from16 v16, v17

    goto :goto_3

    :catchall_0
    move-exception v30

    :goto_5
    if-eqz v19, :cond_b

    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_b
    :goto_6
    throw v30

    :catch_3
    move-exception v11

    const-string v31, "SaveImageInBackgroundTask"

    const-string v32, "IOException"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v30

    move-object/from16 v16, v17

    goto :goto_5

    :catchall_2
    move-exception v30

    move-object/from16 v19, v20

    move-object/from16 v16, v17

    goto :goto_5

    :catch_4
    move-exception v11

    goto :goto_4

    :catch_5
    move-exception v11

    move-object/from16 v16, v17

    goto :goto_4

    :catch_6
    move-exception v30

    goto/16 :goto_1

    :cond_c
    move-object/from16 v19, v20

    move-object/from16 v16, v17

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 18

    const-string v14, "SaveImageInBackgroundTask"

    const-string v15, "SaveImageInBackgroundTask setProcessForeground onPostExecute"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    const/16 v17, 0x0

    invoke-interface/range {v14 .. v17}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    const-string v14, "SaveImageInBackgroundTask"

    const-string v15, "SaveImageInBackgroundTask isCancelled setProcessForeground false"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    :goto_1
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    const v15, 0x7f0d047f

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    const/16 v17, 0x0

    invoke-interface/range {v14 .. v17}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    const-string v14, "SaveImageInBackgroundTask"

    const-string v15, "SaveImageInBackgroundTask setProcessForeground false"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    goto :goto_1

    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v15, "image/png"

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v14, 0x10000000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v15, 0x7f0d0249

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    const v15, 0x7f0d024a

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    const v15, 0x7f0d0249

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    const v15, 0x7f0d024a

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v14}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    iget v14, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v14, v14, -0x21

    iput v14, v8, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v14, v15, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "edit_after_screen_capture"

    const/16 v16, 0x0

    const/16 v17, -0x2

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "SaveImageInBackgroundTask"

    const-string v15, "EDIT_AFTER_SCREEN_CAPTURE is enabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v14, "%s/%s/"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreepshotsSaveFolder:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "Screenshots"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Landroid/content/ComponentName;

    const-string v14, "com.sec.spen.flashannotate"

    const-string v15, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v5, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/high16 v14, 0x14010000

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v14, "com.sec.spen.flashannotate"

    const-string v15, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "degree"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v14, "isBasedLandscape"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v14, "savepath"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    :try_start_2
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v14, v3, v15}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_3
    new-instance v2, Landroid/content/ComponentName;

    const-string v14, "com.sec.android.mimage.photoretouching"

    const-string v15, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct {v2, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "android.intent.action.EDIT"

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v14, 0x10000000

    invoke-virtual {v3, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v14, 0x8000

    invoke-virtual {v3, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v15, "image/png"

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "degree"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v14, "isBasedLandscape"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v14, "savepath"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4

    :cond_4
    const-string v14, "SaveImageInBackgroundTask"

    const-string v15, "Photo editor component is not available"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "android.intent.action.SEND"

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "FilePath"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "DirPath"

    invoke-virtual {v3, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "degree"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v14, "isBasedLandscape"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v14, "savepath"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v15, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v14, 0x10000000

    invoke-virtual {v3, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_4

    :catch_1
    move-exception v14

    goto/16 :goto_3

    :catch_2
    move-exception v14

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
