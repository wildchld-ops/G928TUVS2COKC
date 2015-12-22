.class public Landroid/sec/clipboard/data/ClipboardConstants;
.super Ljava/lang/Object;
.source "ClipboardConstants.java"


# static fields
.field public static final CLIPBOARD_DRAGNDROP:Ljava/lang/String; = "clipboarddragNdrop"

.field public static final CLIPBOARD_ROOT_PATH:Ljava/lang/String; = "/data/clipboard"

.field public static DEBUG:Z = false

.field public static final HTML_PREVIEW_IMAGE_NAME:Ljava/lang/String; = "previewhtemlclipboarditem"

.field public static INFO_DEBUG:Z = false

.field public static final MAX_DATA_COUNT:I = 0x14

.field public static final SAFETY_STRING_LENGTH:I = 0x20000

.field public static final SUPPORT_KNOX:Z

.field public static final USER_ADDED:Ljava/lang/String; = "ADDED"

.field public static final USER_REMOVED:Ljava/lang/String; = "REMOVED"

.field public static final USER_SWITCHED:Ljava/lang/String; = "SWITCHED"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    const-string v0, "1"

    const-string/jumbo v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
