.class public final Lcom/samsung/android/mdnie/MdnieManager;
.super Ljava/lang/Object;
.source "MdnieManager.java"


# static fields
.field public static final MDNIE_CONTENT_MODE_BROWSER:I = 0x8

.field public static final MDNIE_CONTENT_MODE_CAMERA:I = 0x4

.field public static final MDNIE_CONTENT_MODE_EBOOK:I = 0x9

.field public static final MDNIE_CONTENT_MODE_EMAIL:I = 0xa

.field public static final MDNIE_CONTENT_MODE_GALLERY:I = 0x6

.field public static final MDNIE_CONTENT_MODE_HMT16:I = 0xc

.field public static final MDNIE_CONTENT_MODE_HMT8:I = 0xb

.field public static final MDNIE_CONTENT_MODE_NAVI:I = 0x5

.field public static final MDNIE_CONTENT_MODE_UI:I = 0x0

.field public static final MDNIE_CONTENT_MODE_VIDEO:I = 0x1

.field public static final MDNIE_CONTENT_MODE_VT:I = 0x7

.field public static final MDNIE_SCREEN_ADAPTIVE_MODE:I = 0x4

.field public static final MDNIE_SCREEN_ADOBERGB_MODE:I = 0x2

.field public static final MDNIE_SCREEN_AMOLED_MODE:I = 0x1

.field public static final MDNIE_SCREEN_AMOLED_S_CURVE_MODE:I = 0x0

.field public static final MDNIE_SCREEN_SRGB_MODE:I = 0x3

.field public static final MDNIE_VISION_COLOR_BLIND:I = 0x3

.field public static final MDNIE_VISION_GREY_SCALE:I = 0x4

.field public static final MDNIE_VISION_LOCAL_CE:I = 0x5

.field public static final MDNIE_VISION_LOCAL_CE_TEXT:I = 0x6

.field public static final MDNIE_VISION_NEGATIVE:I = 0x1

.field public static final MDNIE_VISION_NORMAL:I = 0x0

.field public static final MDNIE_VISION_SCREEN_CURTAIN:I = 0x2

.field private static RETURN_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MdnieManager"


# instance fields
.field final mService:Lcom/samsung/android/mdnie/IMdnieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdnie/IMdnieManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "MdnieManager"

    const-string v1, "In Constructor Stub-Service(IMdnieManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    return-void
.end method


# virtual methods
.method public getContentMode()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/mdnie/IMdnieManager;->getContentMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget v1, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    goto :goto_0
.end method

.method public getScreenMode()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/mdnie/IMdnieManager;->getScreenMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget v1, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    goto :goto_0
.end method

.method public setAmoledACL(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setAmoledACL(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setContentMode(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setContentMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setScreenMode(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setScreenMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
