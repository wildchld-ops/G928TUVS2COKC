.class public Lcom/android/phone/photoring/PhotoRingScreen;
.super Landroid/app/Activity;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/photoring/PhotoRingScreen$18;,
        Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;,
        Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;,
        Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;,
        Lcom/android/phone/photoring/PhotoRingScreen$PROJECTION_NUMBER;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final PHONE_URI:Landroid/net/Uri;

.field public static final THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

.field public static VIDEO_DURATION_LIMIT:I

.field public static mUriCamera:Landroid/net/Uri;

.field public static mUriVideos:Landroid/net/Uri;


# instance fields
.field private final CONTENT_FROM_GALLERY:I

.field private final CONTENT_FROM_MO_LOG:I

.field private final CONTENT_IMAGE:I

.field private final CONTENT_NONE:I

.field private final CONTENT_VIDEO:I

.field private PRUrl:Ljava/lang/String;

.field private final REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

.field private final REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

.field private final REQUEST_PHOTO_FROM_CROP:I

.field private final REQUEST_PICK_NUM_FROM_CONTACTS:I

.field private final REQUEST_PICK_PHOTO_FROM_GALLERY:I

.field private final REQUEST_PICK_VIDEO_FROM_GALLERY:I

.field private final REQUEST_PICK_VIDEO_FROM_TRIM:I

.field private final REQUEST_SHOW_NOTICE:I

.field private bEmptyNumErr:Z

.field private bMobileOffPopup:Z

.field private bMobileOnPopup:Z

.field private bShowOnly:Z

.field private bUnregierShowme:Z

.field private bisExcuted:Z

.field private cancellistener:Landroid/content/DialogInterface$OnCancelListener;

.field private chgUrl:Ljava/lang/String;

.field private clickListenerToDismiss:Landroid/content/DialogInterface$OnClickListener;

.field private clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

.field private clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;

.field private contactName:Ljava/lang/String;

.field private contentUrl:Ljava/lang/String;

.field private gUtil:Lcom/android/phone/photoring/GifUtil;

.field private iMM:Landroid/view/inputmethod/InputMethodManager;

.field private isAgif:Z

.field private mBTN_MediaEdit:Landroid/widget/Button;

.field private mBTN_MessageList:Landroid/widget/Button;

.field private mBTN_Send:Landroid/widget/Button;

.field private mByteCnt:Landroid/widget/TextView;

.field private mCB:Landroid/widget/CheckBox;

.field private mCallMessageNetworkListener:Lcom/android/phone/photoring/ICallMessageNetworkListener;

.field private mContactButton:Landroid/widget/Button;

.field private mContentFrom:I

.field private mContentType:I

.field private mFilePath:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mHasphotoringToDial:Z

.field private mIsOverLength:Z

.field private mMenuDialog:Landroid/app/AlertDialog;

.field public mNameView:Landroid/widget/TextView;

.field mNewResize:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

.field private mNumber:Ljava/lang/String;

.field private mNumberText:Landroid/widget/AutoCompleteTextView;

.field private mPM:Lcom/android/phone/photoring/PhotoRingMgr;

.field public mPhotoringContentsText:Landroid/widget/TextView;

.field private mPreparedMediaButton:Landroid/widget/ImageView;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecipientsText:Landroid/widget/AutoCompleteTextView;

.field mResizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

.field private mResizingdialog:Landroid/app/ProgressDialog;

.field private mThumbHeight:I

.field private mUseNXP_TRIM:Z

.field public mVideoErrIcon:Landroid/widget/ImageView;

.field mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

.field private needDownContent:Z

.field private pMe:Landroid/content/Context;

.field private prevFilePath:Ljava/lang/String;

.field private final reqIDs:[I

.field private uploadPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    const/16 v0, 0x3a98

    sput v0, Lcom/android/phone/photoring/PhotoRingScreen;->VIDEO_DURATION_LIMIT:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->PHONE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNameView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bEmptyNumErr:Z

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z

    iput-boolean v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOffPopup:Z

    iput-boolean v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOnPopup:Z

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bisExcuted:Z

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bUnregierShowme:Z

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->REQUEST_PICK_PHOTO_FROM_GALLERY:I

    const/16 v0, 0x97

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->REQUEST_PICK_VIDEO_FROM_GALLERY:I

    const/16 v0, 0x98

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->REQUEST_PICK_VIDEO_FROM_TRIM:I

    const/16 v0, 0x99

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

    const/16 v0, 0x9a

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

    const/16 v0, 0x9b

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->REQUEST_PICK_NUM_FROM_CONTACTS:I

    const/16 v0, 0x9c

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->REQUEST_SHOW_NOTICE:I

    const/16 v0, 0x9d

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->REQUEST_PHOTO_FROM_CROP:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->reqIDs:[I

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->prevFilePath:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->CONTENT_NONE:I

    iput v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->CONTENT_IMAGE:I

    iput v4, p0, Lcom/android/phone/photoring/PhotoRingScreen;->CONTENT_VIDEO:I

    iput v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    iput v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->CONTENT_FROM_GALLERY:I

    iput v4, p0, Lcom/android/phone/photoring/PhotoRingScreen;->CONTENT_FROM_MO_LOG:I

    iput v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mIsOverLength:Z

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z

    iput v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mThumbHeight:I

    const-string v0, "ims_photoring_use_nxp"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mUseNXP_TRIM:Z

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$1;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$2;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$3;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$4;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$5;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToDismiss:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$6;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$6;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCallMessageNetworkListener:Lcom/android/phone/photoring/ICallMessageNetworkListener;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    return-void

    nop

    :array_0
    .array-data 4
        0x96
        0x97
        0x99
        0x9a
    .end array-data
.end method

.method private Pick_Video_From_Trim()V
    .locals 12

    sget-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v2, "PhotoRingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUriVideos : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PhotoRingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v1, :cond_1

    move-object v1, v8

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "PhotoRingScreen"

    const-string v2, "ContentResolver is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    const-string v1, "..."

    goto :goto_0

    :cond_1
    const-string v1, "..."

    goto :goto_1

    :cond_2
    const-wide/16 v10, -0x1

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data =\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    const-string v1, "PhotoRingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    cmp-long v1, v10, v2

    if-eqz v1, :cond_5

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    :cond_5
    const-string v2, "PhotoRingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUriVideos : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    sget-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    sget-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v2, "photoring_data.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    :goto_5
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->resetContentFrom()V

    goto/16 :goto_2

    :catch_0
    move-exception v7

    const-string v1, "PhotoRingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string v1, "..."

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const-string v1, "photoring_data_thumb.png"

    invoke-static {p0, v9, v1}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_5
.end method

.method static synthetic access$000(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->Pick_Video_From_Trim()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->englog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/photoring/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->chgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->chgUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->placeCallIncludeMessage()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->showErrorDismissDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/photoring/PhotoRingScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/photoring/PhotoRingScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->enableMobileData()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bEmptyNumErr:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bEmptyNumErr:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->isValidNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bUnregierShowme:Z

    return p1
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private checkMobileData()Z
    .locals 14

    const v13, 0x7f0a05e4

    const v12, 0x7f040071

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v9, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "key_photoring_enable_mobile_data_show"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_3

    iget-boolean v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOffPopup:Z

    if-eqz v7, :cond_3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v12, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f100159

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f10015a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    const v7, 0x7f1000e1

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x7f0a05e5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v7, 0x7f100158

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0a0463

    new-instance v8, Lcom/android/phone/photoring/PhotoRingScreen$7;

    invoke-direct {v8, p0}, Lcom/android/phone/photoring/PhotoRingScreen$7;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0a008e

    new-instance v8, Lcom/android/phone/photoring/PhotoRingScreen$8;

    invoke-direct {v8, p0}, Lcom/android/phone/photoring/PhotoRingScreen$8;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/photoring/PhotoRingScreen$9;

    invoke-direct {v7, p0}, Lcom/android/phone/photoring/PhotoRingScreen$9;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iput-boolean v10, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOffPopup:Z

    const/4 v4, 0x0

    :cond_0
    :goto_1
    return v4

    :cond_1
    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f0a06e9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v7, 0x7f0a05e5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->enableMobileData()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "key_photoring_mobile_data_show"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_0

    iget-boolean v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOnPopup:Z

    if-eqz v7, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v12, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f100159

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f10015a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    const v7, 0x7f1000e1

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const v7, 0x7f100158

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0a0090

    new-instance v8, Lcom/android/phone/photoring/PhotoRingScreen$10;

    invoke-direct {v8, p0}, Lcom/android/phone/photoring/PhotoRingScreen$10;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/photoring/PhotoRingScreen$11;

    invoke-direct {v7, p0}, Lcom/android/phone/photoring/PhotoRingScreen$11;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iput-boolean v10, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOnPopup:Z

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_5
    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x7f0a06e8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private dismissMenuDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "dismissMenuDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private editMenuSelected(I)V
    .locals 8

    invoke-static {p1}, Lcom/android/phone/photoring/PhotoringUtil;->getAttachIntent(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->reqIDs:[I

    aget v2, v3, p1

    const/16 v3, 0x9a

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->checkRemainingSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bisExcuted:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bisExcuted:Z

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "PhotoRingScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableMobileData()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "DataEnable"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "Roaming"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v3, 0x2006

    invoke-static {p0, v3}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "true"

    const-string v4, "persist.sys.restrict_background"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ENABLED"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhotoRingScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initPhotoRingScreen()V
    .locals 6

    const/4 v5, 0x0

    const v1, 0x7f040079

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->setContentView(I)V

    const v1, 0x7f10017f

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const v1, 0x7f10017e

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const v1, 0x7f10017d

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->registerForContextMenu(Landroid/view/View;)V

    new-instance v1, Lcom/android/phone/photoring/GifUtil;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lcom/android/phone/photoring/GifUtil;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    :cond_0
    const v1, 0x7f10017c

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_1
    const v1, 0x7f100167

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mByteCnt:Landroid/widget/TextView;

    const v1, 0x7f10017b

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/android/phone/photoring/PhotoRingScreen$15;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoRingScreen$15;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/android/phone/photoring/PhotoRingScreen$16;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoRingScreen$16;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/android/phone/photoring/PhotoRingScreen$17;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoRingScreen$17;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/android/phone/photoring/PhotoringUtil$PhraseTextWatcher;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mByteCnt:Landroid/widget/TextView;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/phone/photoring/PhotoringUtil$PhraseTextWatcher;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v5}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;

    invoke-direct {v1, p0}, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const-string v2, "disableEmoticonInput=true"

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const v1, 0x7f1000ea

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v1, 0x7f100181

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v1, 0x7f100183

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    const v1, 0x7f100182

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setTempGUI()V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->loadPhotoNameInfo()V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mThumbHeight:I

    return-void
.end method

.method private isValidNumber(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private loadTabs()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "additional"

    const-string v3, "phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "existingRecipientCount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x9b

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PhotoRingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhotoRingScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    if-eqz v0, :cond_1

    const-string v1, "+82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "+82"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\p{Space}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private placeCallIncludeMessage()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/photoring/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/photoring/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "PhotoRingScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCallIncludeMessage.."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v6, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v6, :cond_2

    move-object v6, v5

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->saveToHistory()V

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "key_photoring_mt_content_url"

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    invoke-static {v7, v5, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "ims_support_photo_ring"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "callmessage"

    const-string v7, "<PhotoRing>"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_2
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoRingScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "clear"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->finish()V

    return-void

    :cond_2
    const-string v6, ""

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "key_photoring_mt_content_url"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    const-string v6, "callmessage"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v6, "PhotoRingScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity found for intent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_5
    const-string v6, "PhotoRingScreen"

    const-string v7, "warning : number is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private resetContentFrom()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private resizeVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/saiv/codec/VideoTranscoder;

    invoke-direct {v0}, Lcom/samsung/android/saiv/codec/VideoTranscoder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/samsung/android/saiv/codec/VideoTranscoder;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    const/16 v1, 0x7cf

    invoke-virtual {v0, v1}, Lcom/samsung/android/saiv/codec/VideoTranscoder;->setMaxOutputSize(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/saiv/codec/VideoTranscoder;->setEncodingCodecs(II)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    invoke-virtual {v0}, Lcom/samsung/android/saiv/codec/VideoTranscoder;->getOutputFileSize()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "PhotoRingScreen"

    const-string v1, "resizingVideo IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    const-string v1, "0/1"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    invoke-direct {v0, p0, p2, v7, v5}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;ILcom/android/phone/photoring/PhotoRingScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;Lcom/samsung/android/saiv/codec/VideoTranscoder;Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;Landroid/os/Handler;Lcom/android/phone/photoring/PhotoRingScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNewResize:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNewResize:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->start()V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private saveToHistory()V
    .locals 15

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget v11, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v8

    const-string v11, "/data/data/com.android.phone/files/"

    const-string v12, "photoring_data.png"

    invoke-static {v11, v12, v8}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "/data/data/com.android.phone/files/"

    const-string v12, "photoring_data_thumb.png"

    const-string v13, ".png"

    const-string v14, "thumb.png"

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v11}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/android/phone/photoring/PhotoRingDB;

    invoke-direct {v6, p0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/android/phone/photoring/PhotoRingDB;->getPhrasesByType(I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v11, 0x2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/android/phone/photoring/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v6, v4, v5, v1}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v11, 0x3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 v11, 0x1

    invoke-virtual {v6, v3, v7, v9, v11}, Lcom/android/phone/photoring/PhotoRingDB;->insertPhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    return-void

    :cond_2
    iget v11, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "photoring_data.mp4"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "/data/data/com.android.phone/files/"

    const-string v12, "photoring_data.mp4"

    invoke-static {v11, v12, v8}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    const-string v11, "/data/data/com.android.phone/files/"

    const-string v12, "photoring_data_thumb.png"

    const-string v13, ".mp4"

    const-string v14, "thumb.png"

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_3
    iget-object v11, p0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const-string v12, "photoring_temp.mp4"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v11, "photoring_temp.mp4"

    invoke-static {v2, v11, v8}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "_data"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "_display_name"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "title"

    const/4 v12, 0x0

    const-string v13, ".mp4"

    invoke-virtual {v8, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_data=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v11, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_4
    sget-object v11, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1
.end method

.method private setImageToView()V
    .locals 5

    const-string v2, "/data/data/com.android.phone/files/photoring_data.png"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mThumbHeight:I

    iget v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mThumbHeight:I

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "photoring_data_thumb.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setPreviewInit()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->prevFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->prevFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iput v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setTempGUI()V
    .locals 3

    const v2, 0x7f0c0011

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    const v1, 0x7f0a027a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const v1, 0x7f0a06e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const v1, 0x7f0a05cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showEditMenuDialog()V
    .locals 1

    const-string v0, "showEditMenuDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->dismissMenuDialog()V

    invoke-static {p0, p0}, Lcom/android/phone/photoring/PhotoringUtil;->createAttachMenuDialog(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x7f0a0090

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f0a05e6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showErrorDismissDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x7f0a0090

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f0a05e6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0090

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a008e

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startRecentCallMessageActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/photoring/PhotoringPhraseList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "finish"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replace(replace(replace(replace("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"-\",\"\"),\")\",\"\"),\"(\",\"\"), \" \",\"\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public loadPhotoNameInfo()V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    const-string v0, "loadPhotoNameInfo.."

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->englog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->PHONE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/photoring/PhotoRingScreen$PROJECTION_NUMBER;->projection:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getSelection()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-eqz v7, :cond_1

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v7}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v9}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 42

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v38, "PhotoRingScreen"

    const-string v39, "onActivityResult"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "requestCode = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", resultCode = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->bisExcuted:Z

    const/16 v38, -0x1

    move/from16 v0, p2

    move/from16 v1, v38

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->dismissMenuDialog()V

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v38, "PhotoRingScreen"

    const-string v39, "callmessage selected"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v38, "callmessage"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v38, "contentPath"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v39, "PhotoRingScreen"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "returned mgs - "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sget-boolean v38, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v38, :cond_14

    move-object/from16 v38, v28

    :goto_1
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, ", and contents - "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sget-boolean v38, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v38, :cond_15

    move-object/from16 v38, v7

    :goto_2
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    :cond_2
    if-eqz v7, :cond_19

    const-string v38, ".png"

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_3

    const-string v38, ".jpg"

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_17

    :cond_3
    const-string v38, "file://"

    const-string v39, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_16

    const-string v38, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/GifUtil;->setImagePath(Ljava/lang/String;)V

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->resetContentFrom()V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    goto/16 :goto_0

    :sswitch_1
    const-string v38, "feature_ktt"

    invoke-static/range {v38 .. v38}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->bUnregierShowme:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0a06ed

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->showErrorDismissDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    if-nez v13, :cond_5

    const-string v38, "PhotoRingScreen"

    const-string v39, "Return value from GALLERY (extras) is null"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v38, "/data/data/com.android.phone/files/croptemp.png"

    invoke-static/range {v38 .. v38}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v26

    if-nez v26, :cond_6

    const-string v38, "PhotoRingScreen"

    const-string v39, "Returned image is null"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v37

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getOutputX()I

    move-result v11

    mul-int v38, v11, v17

    div-int v10, v38, v37

    :goto_5
    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "image saved size ["

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "] => ["

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "] "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v38, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-static {v0, v11, v10, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v26

    const-string v38, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const-string v38, "/data/data/com.android.phone/files/photoring_data.png"

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->resetContentFrom()V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getOutputY()I

    move-result v10

    mul-int v38, v10, v37

    div-int v11, v38, v17

    goto :goto_5

    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v38

    sput-object v38, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    const-string v39, "PhotoRingScreen"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "mUriCamera by REQUEST_ATTACH_PHOTO_FROM_CAMERA : "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sget-boolean v38, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v38, :cond_9

    sget-object v38, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    :goto_6
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v38, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getImageFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "isAgif : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    move/from16 v38, v0

    if-eqz v38, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_a

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    const-string v38, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-static {v0, v4, v1}, Lcom/android/phone/photoring/PhotoringUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v38, "/data/data/com.android.phone/files/photoring_data.png"

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/android/phone/photoring/GifUtil;->setImagePath(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->resetContentFrom()V

    goto/16 :goto_0

    :cond_9
    const-string v38, "..."

    goto/16 :goto_6

    :cond_a
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    new-instance v9, Ljava/io/File;

    const-string v38, "/data/data/com.android.phone/files/croptemp.png"

    move-object/from16 v0, v38

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v38

    if-nez v38, :cond_b

    const-string v38, "croptemp.png"

    const/16 v39, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_b
    :goto_7
    const/16 v38, 0x4

    invoke-static/range {v38 .. v38}, Lcom/android/phone/photoring/PhotoringUtil;->getAttachIntent(I)Landroid/content/Intent;

    move-result-object v8

    const-string v38, "output"

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v38, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    const-string v39, "image/*"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v38, 0x9d

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v8, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "No activity found for intent: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v14

    const-string v38, "PhotoRingScreen"

    const-string v39, "file exception"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :sswitch_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "file path : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v38, v0

    if-eqz v38, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, ".mp4"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_d

    :cond_c
    const/16 v38, 0x2007

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->isNeedProcessTrim(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mUseNXP_TRIM:Z

    move/from16 v38, v0

    if-eqz v38, :cond_e

    if-eqz v24, :cond_e

    new-instance v38, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v21

    new-instance v31, Landroid/content/Intent;

    const-string v38, "android.intent.action.TRIM_SHARE"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v38, "uri"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v38, 0x98

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v12

    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "No activity found for intetn : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-ne v0, v1, :cond_11

    new-instance v22, Ljava/io/File;

    const-string v38, "/storage/emulated/0/photoring/"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v38

    if-nez v38, :cond_f

    const-string v38, "PhotoRingScreen"

    const-string v39, "make dir."

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    const/16 v38, 0x1

    const/16 v39, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    const/16 v38, 0x1

    const/16 v39, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_f
    new-instance v23, Ljava/io/File;

    const-string v38, "/storage/emulated/0/photoring/photoring_temp.mp4"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_10

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "/storage/emulated/0/photoring/photoring_temp.mp4"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->resizeVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const/16 v38, 0x2

    move/from16 v0, v24

    move/from16 v1, v38

    if-ne v0, v1, :cond_12

    const-wide/16 v34, 0x7cf

    const/16 v36, 0x280

    const/16 v33, 0x1e0

    const-string v6, "photoring"

    new-instance v38, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v32

    new-instance v31, Landroid/content/Intent;

    const-string v38, "android.intent.action.MAIN"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v38, "com.samsung.app.newtrim/com.samsung.app.newtrim.trimactivity.TrimActivity"

    invoke-static/range {v38 .. v38}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v38, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v38, "uri"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v38, "VIDEO_OUTPUT_SIZE"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v38, "VIDEO_OUTPUT_WIDTH"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v38, "VIDEO_OUTPUT_HEIGHT"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v38, "CALLER_APP"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v38, 0x98

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v12

    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "No activity found for intetn : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    const/16 v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    sput-object v29, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    sget-object v38, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v39, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v38

    const-wide/16 v40, -0x1

    cmp-long v38, v38, v40

    if-lez v38, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->resetContentFrom()V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    move-object/from16 v38, v0

    const/16 v39, 0x4

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f02002f

    invoke-static/range {v38 .. v39}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v30

    const-string v38, "photoring_data_thumb.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_4
    const-string v38, "PhotoRingScreen"

    const-string v39, "REQUEST_PICK_VIDEO_FROM_TRIM"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v38

    sput-object v38, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->Pick_Video_From_Trim()V

    goto/16 :goto_0

    :cond_14
    const-string v38, "..."

    goto/16 :goto_1

    :cond_15
    const-string v38, "..."

    goto/16 :goto_2

    :cond_16
    invoke-static/range {v20 .. v20}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v26

    const-string v38, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_17
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    sput-object v38, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v38, "file://"

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_18

    const-string v38, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-static {v0, v7, v1}, Lcom/android/phone/photoring/PhotoringUtil;->setVideoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v38, "file://"

    const-string v39, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    :goto_9
    const/16 v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    goto/16 :goto_3

    :cond_18
    sget-object v38, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v39, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    sget-object v38, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    goto :goto_9

    :cond_19
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const/16 v39, 0x8

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :sswitch_5
    const-string v38, "PhotoRingScreen"

    const-string v39, "onActivityResult(REQUEST_PICK_NUM_FROM_CONTACTS)"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string v38, "result"

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v38

    const-string v39, "result"

    invoke-virtual/range {v38 .. v39}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    const-string v39, "PhotoRingScreen"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "numberFromContact = "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sget-boolean v38, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v38, :cond_1e

    move-object/from16 v38, v25

    :goto_a
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v25, :cond_1d

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1a
    :goto_b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_1d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    sget-boolean v38, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v38, :cond_1b

    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "idAndNumber = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "idAndNumber.indexOf(\';\') = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x3b

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/16 v38, 0x3b

    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1a

    const/16 v38, 0x3b

    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    sget-boolean v38, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v38, :cond_1c

    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "sCallerNo = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v38, "PhotoRingScreen"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "sCallerNo.trim().length() = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    if-eqz v27, :cond_20

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-lez v38, :cond_20

    const-string v38, "P"

    const-string v39, ","

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    const-string v39, "-"

    const-string v40, ""

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    const-string v39, "W"

    const-string v40, ";"

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    const-string v39, "PhotoRingScreen"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "mNumber = "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sget-boolean v38, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v38, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    move-object/from16 v38, v0

    :goto_c
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->loadPhotoNameInfo()V

    goto/16 :goto_0

    :cond_1e
    const-string v38, "xxx-xxxx"

    goto/16 :goto_a

    :cond_1f
    const-string v38, "..."

    goto :goto_c

    :cond_20
    const/16 v27, 0x0

    goto/16 :goto_b

    :sswitch_6
    const-string v38, "finishApp"

    const/16 v39, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->finish()V

    goto/16 :goto_0

    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x96 -> :sswitch_2
        0x97 -> :sswitch_3
        0x98 -> :sswitch_4
        0x99 -> :sswitch_2
        0x9a -> :sswitch_3
        0x9b -> :sswitch_5
        0x9c -> :sswitch_6
        0x9d -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onClick id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->startRecentCallMessageActivity()V

    goto :goto_0

    :sswitch_1
    const v13, 0x7f10015a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v8, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a05f2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->bEmptyNumErr:Z

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xa

    if-ge v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    const/16 v13, 0x2005

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_6

    :cond_5
    const/16 v13, 0x2004

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->dismissMenuDialog()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mIsOverLength:Z

    if-eqz v13, :cond_7

    const/16 v13, 0x2001

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-nez v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "key_photoring_duty_show"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-eqz v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "key_photoring_duty_media_show"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    :cond_9
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v13, 0x7f040071

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v13, 0x7f100159

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v13, 0x7f100158

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-nez v13, :cond_a

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const v13, 0x7f10015a

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0a05e2

    new-instance v14, Lcom/android/phone/photoring/PhotoRingScreen$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/phone/photoring/PhotoRingScreen$12;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0a008e

    new-instance v14, Lcom/android/phone/photoring/PhotoRingScreen$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/phone/photoring/PhotoRingScreen$13;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v13, Lcom/android/phone/photoring/PhotoRingScreen$14;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/phone/photoring/PhotoRingScreen$14;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_a
    const-string v13, "ims_support_photo_ring"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a05ec

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_b
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-eqz v13, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a062f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    goto/16 :goto_2

    :cond_d
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z

    goto/16 :goto_2

    :cond_e
    const-string v13, "ims_support_photo_ring"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->placeCallIncludeMessage()V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " setRealtimeServiceInfoCall message without image: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->englog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/phone/photoring/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v9, v15}, Lcom/android/phone/photoring/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->showEditMenuDialog()V

    goto/16 :goto_0

    :sswitch_4
    const-string v13, "PhotoRingScreen"

    const-string v14, "add contact for photoring"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->loadTabs()V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v14, "video/*"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "from_photoring_to_videoplayer"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v13, "PhotoRingScreen"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t play video "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :sswitch_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_7
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_8
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_9
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000ea -> :sswitch_4
        0x7f10014c -> :sswitch_6
        0x7f10014f -> :sswitch_7
        0x7f100152 -> :sswitch_8
        0x7f100155 -> :sswitch_9
        0x7f100159 -> :sswitch_1
        0x7f10017d -> :sswitch_5
        0x7f100181 -> :sswitch_0
        0x7f100182 -> :sswitch_3
        0x7f100183 -> :sswitch_2
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v9, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v8, "video/*"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "from_photoring_to_videoplayer"

    const/4 v8, 0x1

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "PhotoRingScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t play video "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    sget-object v5, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "file://"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "file://"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    :goto_1
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "PhotoRingScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onContextItemSelected uri : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mUseNXP_TRIM:Z

    if-eqz v5, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.TRIM_SHARE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "option"

    const-string v8, "PostProcessedTrim"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v5, "uri"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v5, 0x98

    :try_start_1
    invoke-virtual {p0, v3, v5}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v5, "PhotoRingScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found for intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    sget-object v5, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v5}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x7cf

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.samsung.app.newtrim/com.samsung.app.newtrim.trimactivity.TrimActivity"

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "VIDEO_OUTPUT_SIZE"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "VIDEO_OUTPUT_WIDTH"

    const/16 v8, 0x280

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "VIDEO_OUTPUT_HEIGHT"

    const/16 v8, 0x1e0

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "CALLER_APP"

    const-string v8, "photoring"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_2
    iput v9, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v5}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    iput-boolean v9, p0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const v8, 0x7f0a05d7

    const/4 v11, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->setTitle(I)V

    :goto_0
    const-string v7, "onCreate"

    invoke-direct {p0, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Lcom/android/phone/photoring/PhotoRingScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->getInstance()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    iput-object p0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-virtual {v7, v4}, Lcom/android/phone/photoring/PhotoRingMgr;->getNumberFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v11, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->finish()V

    :goto_1
    return-void

    :cond_2
    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f0a06e4

    invoke-virtual {p0, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->setTitle(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->setTitle(I)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCallMessageNetworkListener:Lcom/android/phone/photoring/ICallMessageNetworkListener;

    invoke-virtual {v7, v8}, Lcom/android/phone/photoring/PhotoRingMgr;->registerCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-virtual {v7}, Lcom/android/phone/photoring/PhotoRingMgr;->getContentSpecCall()V

    const-string v7, "photoring_uri"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "photoring_uri"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    const-string v1, "photoring_data.png"

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v1, "photoring_data.mp4"

    :cond_5
    const-string v7, "call_type"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    if-gez v7, :cond_7

    const-string v1, "mcid_data.png"

    :cond_6
    :goto_2
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8}, Lcom/android/phone/PhoneGlobals;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/com.android.phone/files/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/photoring/PhotoRingMgr;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z

    iget v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    if-gez v7, :cond_8

    iput-boolean v11, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a062f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    :cond_7
    const-string v1, "photoring_data.png"

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v7, "make file failed"

    invoke-direct {p0, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentFrom : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->initPhotoRingScreen()V

    const-string v7, "cnap_name"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const-string v8, "cnap_name"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "key_photoring_use_guide_show"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_b

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/phone/photoring/PhotoringGuide;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v7, 0x9c

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f0a05de

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0a0284

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x3

    const v1, 0x7f0a0286

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCallMessageNetworkListener:Lcom/android/phone/photoring/ICallMessageNetworkListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->deregisterCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    :cond_0
    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mByteCnt:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNameView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bUnregierShowme:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v0}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setMaxLines(I)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bisExcuted:Z

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setPreviewInit()V

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v0}, Lcom/android/phone/photoring/GifUtil;->startAnimate()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    return-void
.end method
