.class public Lcom/android/phone/photoring/PhotoringPhrasesEdit;
.super Landroid/app/Activity;
.source "PhotoringPhrasesEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;,
        Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final reqIDs:[I


# instance fields
.field private filesDir:Ljava/io/File;

.field private gUtil:Lcom/android/phone/photoring/GifUtil;

.field private id:J

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private isAgif:Z

.field private mByteCnt:Landroid/widget/TextView;

.field private mContentType:I

.field mHandler:Landroid/os/Handler;

.field mNewResize:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

.field mResizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

.field private mResizingdialog:Landroid/app/ProgressDialog;

.field private mScreenMode:I

.field private mThumbHeight:I

.field private mUseNXP_TRIM:Z

.field mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

.field private menuDlg:Landroid/app/AlertDialog;

.field private mtvPhrase:Landroid/widget/EditText;

.field private mtvTxt:Landroid/widget/TextView;

.field private mvImage:Landroid/widget/ImageView;

.field private phrase:Lcom/android/phone/photoring/PhotoringPhrase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->reqIDs:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x2
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    iput v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iput-wide v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->id:J

    new-instance v1, Lcom/android/phone/photoring/PhotoringPhrase;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/android/phone/photoring/PhotoringPhrase;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iput v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    iput-boolean v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    iput-object v4, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    const-string v0, "ims_photoring_use_nxp"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUseNXP_TRIM:Z

    new-instance v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Pick_Video_From_Trim(Landroid/net/Uri;)V
    .locals 12
    .param p1    # Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v1, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUriVideos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "PhotoringPhrasesEdit"

    const-string v2, "ContentResolver is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
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

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const-string v1, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    cmp-long v1, v10, v2

    if-eqz v1, :cond_3

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    :cond_3
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v2, "PhotoringPhrasesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUriVideos : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v1, :cond_4

    move-object v1, p1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    const-string v1, "photoring_temp_img.png"

    invoke-static {p0, p1, v1}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView()V

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v1, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v1, "..."

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Landroid/net/Uri;)V
    .locals 0
    .param p0    # Lcom/android/phone/photoring/PhotoringPhrasesEdit;
    .param p1    # Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->Pick_Video_From_Trim(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)I
    .locals 1
    .param p0    # Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Lcom/android/phone/photoring/PhotoringPhrase;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V
    .locals 0
    .param p0    # Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->delItem()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/photoring/PhotoringPhrasesEdit;I)V
    .locals 0
    .param p0    # Lcom/android/phone/photoring/PhotoringPhrasesEdit;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->attachMenuSelected(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private attachMenuSelected(I)V
    .locals 8
    .param p1    # I

    invoke-static {p1}, Lcom/android/phone/photoring/PhotoringUtil;->getAttachIntent(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v3, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->reqIDs:[I

    aget v2, v3, p1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->checkRemainingSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private delItem()V
    .locals 4

    new-instance v0, Lcom/android/phone/photoring/PhotoRingDB;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-wide v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-wide v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    const v1, 0x7f0a0318

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    return-void
.end method

.method private dismissMenuDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private displayToast(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private resizeVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/saiv/codec/VideoTranscoder;

    invoke-direct {v0}, Lcom/samsung/android/saiv/codec/VideoTranscoder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/samsung/android/saiv/codec/VideoTranscoder;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    const/16 v1, 0x7cf

    invoke-virtual {v0, v1}, Lcom/samsung/android/saiv/codec/VideoTranscoder;->setMaxOutputSize(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/saiv/codec/VideoTranscoder;->setEncodingCodecs(II)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

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

    const-string v0, "PhotoringPhrasesEdit"

    const-string v1, "resizingVideo IOException"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    const-string v1, "0/1"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    new-instance v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    invoke-direct {v0, p0, p2, v7, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Ljava/lang/String;ILcom/android/phone/photoring/PhotoringPhrasesEdit$1;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Lcom/samsung/android/saiv/codec/VideoTranscoder;Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;Landroid/os/Handler;Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mNewResize:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mNewResize:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->start()V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private returnSelectedPhrase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v3, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedPhrase.. = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v2, :cond_0

    move-object v2, p1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "callmessage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "contentPath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->finish()V

    return-void

    :cond_0
    const-string v2, "..."

    goto :goto_0

    :cond_1
    const-string v2, "..."

    goto :goto_1
.end method

.method private setImageToView()V
    .locals 5

    const-string v2, "/data/data/com.android.phone/files/photoring_temp_img.png"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    iget v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "photoring_data_img_thumb.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setImageToView(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x1

    const-string v3, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImageToView path : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v2, :cond_1

    move-object v2, p1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v2, p1}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v2, p1}, Lcom/android/phone/photoring/GifUtil;->setImagePath(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    :goto_1
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const-string v2, "..."

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "photoring_temp_img.png"

    invoke-static {p0, v0, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    iget v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    invoke-static {v0, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "photoring_data_img_thumb.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    const-string v2, "PhotoringPhrasesEdit"

    const-string v3, "photo is null "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setPhrasePreviewInit()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iput v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iput-object v4, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iput-object v4, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showAttachMenuDialog()V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->dismissMenuDialog()V

    new-instance v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$6;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$6;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    invoke-static {p0, v0}, Lcom/android/phone/photoring/PhotoringUtil;->createAttachMenuDialog(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 36
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v14, 0x0

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v33, -0x1

    move/from16 v0, p2

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->dismissMenuDialog()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez p3, :cond_5

    const-string v33, "PhotoringPhrasesEdit"

    const-string v34, "onActivityResult : data is null for REQUEST_IMAGE_FROM_CAMERA"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    if-nez v12, :cond_2

    const-string v33, "PhotoringPhrasesEdit"

    const-string v34, "Return value from GALLERY (extras) is null"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v33, "/data/data/com.android.phone/files/croptemp.png"

    invoke-static/range {v33 .. v33}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v23

    if-nez v23, :cond_3

    const-string v33, "PhotoringPhrasesEdit"

    const-string v34, "Returned image is null"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v32

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getOutputX()I

    move-result v10

    mul-int v33, v10, v16

    div-int v9, v33, v32

    :goto_1
    const-string v33, "PhotoringPhrasesEdit"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "image saved size ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " => ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-static {v0, v10, v9, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    const-string v33, "photoring_temp_img.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView()V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getOutputY()I

    move-result v9

    mul-int v33, v9, v32

    div-int v10, v33, v16

    goto :goto_1

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getImageFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    move/from16 v33, v0

    if-eqz v33, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    const-string v33, "photoring_temp_img.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v4, v1}, Lcom/android/phone/photoring/PhotoringUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/GifUtil;->setImagePath(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView()V

    :cond_7
    new-instance v7, Ljava/io/File;

    const-string v33, "/data/data/com.android.phone/files/croptemp.png"

    move-object/from16 v0, v33

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v33

    if-nez v33, :cond_8

    const-string v33, "croptemp.png"

    const/16 v34, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    :cond_8
    if-eqz v14, :cond_9

    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    const-string v33, "PhotoringPhrasesEdit"

    const-string v34, "file close"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_2
    const/16 v33, 0x4

    invoke-static/range {v33 .. v33}, Lcom/android/phone/photoring/PhotoringUtil;->getAttachIntent(I)Landroid/content/Intent;

    move-result-object v6

    const-string v33, "output"

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v33, "image/*"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v33, 0x6

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    const-string v33, "PhotoringPhrasesEdit"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "No activity found for intent : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v13

    const-string v33, "PhotoringPhrasesEdit"

    const-string v34, "file exception"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v13

    :try_start_3
    const-string v33, "PhotoringPhrasesEdit"

    const-string v34, "file exception"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_9

    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    const-string v33, "PhotoringPhrasesEdit"

    const-string v34, "file close"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v13

    const-string v33, "PhotoringPhrasesEdit"

    const-string v34, "file exception"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v33

    if-eqz v14, :cond_a

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    const-string v34, "PhotoringPhrasesEdit"

    const-string v35, "file close"

    invoke-static/range {v34 .. v35}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_a
    :goto_3
    throw v33

    :catch_4
    move-exception v13

    const-string v34, "PhotoringPhrasesEdit"

    const-string v35, "file exception"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "file://"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_c

    new-instance v8, Lcom/android/phone/photoring/PhotoRingDB;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    move-object/from16 v33, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v8}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->isNeedProcessTrim(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUseNXP_TRIM:Z

    move/from16 v33, v0

    if-eqz v33, :cond_d

    if-eqz v22, :cond_d

    new-instance v25, Landroid/content/Intent;

    const-string v33, "android.intent.action.TRIM_SHARE"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v17, :cond_0

    new-instance v33, Ljava/io/File;

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    const-string v33, "uri"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v33, 0x5

    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v11

    const-string v33, "PhotoringPhrasesEdit"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "No activity found for intent : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const/16 v33, 0x1

    move/from16 v0, v22

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    new-instance v20, Ljava/io/File;

    const-string v33, "/storage/emulated/0/photoring/"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v33

    if-nez v33, :cond_e

    const-string v33, "PhotoringPhrasesEdit"

    const-string v34, "make dir."

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_e
    new-instance v21, Ljava/io/File;

    const-string v33, "/storage/emulated/0/photoring/photoring_temp.mp4"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_f

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    :cond_f
    const-string v33, "/storage/emulated/0/photoring/photoring_temp.mp4"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->resizeVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/16 v33, 0x2

    move/from16 v0, v22

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    const-wide/16 v30, 0x7cf

    const/16 v29, 0x280

    const/16 v28, 0x1e0

    const-string v5, "photoring"

    new-instance v33, Ljava/io/File;

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v26

    new-instance v24, Landroid/content/Intent;

    const-string v33, "android.intent.action.MAIN"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v33, "com.samsung.app.newtrim/com.samsung.app.newtrim.trimactivity.TrimActivity"

    invoke-static/range {v33 .. v33}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v33, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v33, "uri"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v33, "VIDEO_OUTPUT_SIZE"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v33, "VIDEO_OUTPUT_WIDTH"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v33, "VIDEO_OUTPUT_HEIGHT"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v33, "CALLER_APP"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v33, 0x5

    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v11

    const-string v33, "PhotoringPhrasesEdit"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "No activity found for intetn : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v33, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    const-string v33, "photoring_temp_img.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->Pick_Video_From_Trim(Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1    # Landroid/view/MenuItem;

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "video/*"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t play video "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v7, v7, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.TRIM_SHARE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v6, "file://"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onContextItemSelected uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "uri"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "option"

    const-string v6, "PostProcessedTrim"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x5

    :try_start_1
    invoke-virtual {p0, v3, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v5, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t play video "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    iput v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iput-object v7, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iput-object v7, v5, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v5}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    iput-boolean v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "PhotoringPhrasesEdit"

    const-string v7, "<<onCreate>>"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f040073

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v6, 0x7f100166

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const v6, 0x7f100167

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mByteCnt:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    new-instance v7, Lcom/android/phone/photoring/PhotoringUtil$PhraseTextWatcher;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mByteCnt:Landroid/widget/TextView;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/phone/photoring/PhotoringUtil$PhraseTextWatcher;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v6, 0x1

    new-array v3, v6, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;

    invoke-direct {v7, p0}, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;-><init>(Landroid/content/Context;)V

    aput-object v7, v3, v6

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const-string v7, "disableEmoticonInput=true"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0056

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0087

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    const v6, 0x7f100168

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->registerForContextMenu(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;

    invoke-direct {v7, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/android/phone/photoring/GifUtil;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-direct {v6, v7}, Lcom/android/phone/photoring/GifUtil;-><init>(Landroid/widget/ImageView;)V

    iput-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    const v6, 0x7f100169

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getFilesDir()Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->filesDir:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "type"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    iget v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    iget v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const v6, 0x7f0a05ea

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setTitle(I)V

    :goto_1
    iget v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-eqz v6, :cond_1

    const-string v6, "id"

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->id:J

    :cond_1
    iget v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->id:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    new-instance v2, Lcom/android/phone/photoring/PhotoRingDB;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    iget-wide v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->id:J

    invoke-virtual {v2, v6, v7}, Lcom/android/phone/photoring/PhotoRingDB;->getPhraseById(J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v7, 0x4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v7, v7, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    if-nez v6, :cond_7

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    const/4 v6, 0x4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_3
    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    new-instance v7, Lcom/android/phone/photoring/PhotoringPhrasesEdit$3;

    invoke-direct {v7, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$3;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :goto_4
    return-void

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    iget v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const v6, 0x7f0a05e9

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setTitle(I)V

    goto/16 :goto_1

    :cond_5
    const v6, 0x7f0a05e8

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setTitle(I)V

    goto/16 :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v7, "photoring_temp_img.png"

    invoke-static {p0, v6, v7}, Lcom/android/phone/photoring/PhotoringUtil;->setVideoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView()V

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "photoring_temp_img.png"

    invoke-static {p0, v5, v6}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const v7, 0x7f0a05f6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1    # Landroid/view/ContextMenu;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

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
    .locals 5
    .param p1    # Landroid/view/Menu;

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v0, 0x7f0a05d6

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f0a0287

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f0a0687

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x4

    const v1, 0x7f0a0286

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x5

    const v1, 0x7f0a037f

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "PhotoringPhrasesEdit"

    const-string v1, "<<onDestroy>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1    # Landroid/view/MenuItem;

    const v13, 0x7f0a037e

    const/4 v12, 0x2

    const v5, 0x7f0a05f7

    const/16 v4, 0x2f

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    new-instance v0, Lcom/android/phone/photoring/PhotoRingDB;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    const v2, 0x102002c

    if-ne v9, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->finish()V

    :goto_0
    return v1

    :cond_0
    packed-switch v9, :pswitch_data_0

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->showAttachMenuDialog()V

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-ne v2, v1, :cond_2

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_temp_img.png"

    invoke-static {v2, v3, v10}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_data_img_thumb.png"

    const-string v4, ".png"

    const-string v5, "thumb.png"

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget v3, v3, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPhraseExist(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v3, v3, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/photoring/PhotoRingDB;->insertPhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v13}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->finish()V

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-ne v2, v12, :cond_3

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_data_img_thumb.png"

    const-string v4, ".png"

    const-string v5, "thumb.png"

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0a05fc

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_1

    :cond_4
    const v1, 0x7f0a05fb

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v11, v2, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-ne v2, v1, :cond_8

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v10, v2, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v10, :cond_7

    invoke-static {p0, v10}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v11}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :goto_3
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_temp_img.png"

    invoke-static {v2, v3, v10}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_data_img_thumb.png"

    invoke-static {v2, v3, v11}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget v3, v3, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPhraseExist(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v6

    const-wide/16 v2, -0x1

    cmp-long v1, v6, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-wide v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    cmp-long v1, v6, v2

    if-nez v1, :cond_b

    :cond_6
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-wide v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v3, v3, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v4, v4, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/photoring/PhotoRingDB;->updatePhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-direct {p0, v13}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->finish()V

    goto/16 :goto_1

    :cond_7
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v10

    const-string v1, ".png"

    const-string v2, "thumb.png"

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_8
    iget v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-ne v2, v12, :cond_a

    if-nez v11, :cond_9

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v11

    const-string v1, ".png"

    const-string v2, "thumb.png"

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    :goto_5
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_data_img_thumb.png"

    invoke-static {v2, v3, v11}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    goto :goto_4

    :cond_9
    invoke-static {p0, v11}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_a
    iget v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0a05fc

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_1

    :cond_b
    const v1, 0x7f0a05fb

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_1

    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0686

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0090

    new-instance v4, Lcom/android/phone/photoring/PhotoringPhrasesEdit$5;

    invoke-direct {v4, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$5;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a008e

    new-instance v4, Lcom/android/phone/photoring/PhotoringPhrasesEdit$4;

    invoke-direct {v4, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$4;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    if-ne v2, v1, :cond_e

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_6
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_c
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_d
    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_e
    const v1, 0x7f0a05f8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :pswitch_4
    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->returnSelectedPhrase(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "PhotoringPhrasesEdit"

    const-string v1, "<<onPause>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v0}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/Menu;

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-ne v3, v4, :cond_4

    :goto_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "PhotoringPhrasesEdit"

    const-string v1, "<<onResume>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setPhrasePreviewInit()V

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v0}, Lcom/android/phone/photoring/GifUtil;->startAnimate()V

    :cond_0
    return-void
.end method
