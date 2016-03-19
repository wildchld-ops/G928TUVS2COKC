.class Lcom/stericson/RootTools/InternalVariables;
.super Ljava/lang/Object;
.source "InternalVariables.java"


# static fields
.field protected static BBA:I = 0x0

.field protected static BBV:I = 0x0

.field protected static FPS:I = 0x0

.field protected static GI:I = 0x0

.field protected static GS:I = 0x0

.field protected static GSYM:I = 0x0

.field protected static IAG:I = 0x0

.field protected static final PS_REGEX:Ljava/lang/String; = "^\\S+\\s+([0-9]+).*$"

.field protected static TAG:Ljava/lang/String;

.field protected static accessGiven:Z

.field protected static busyboxVersion:Ljava/lang/String;

.field protected static found:Z

.field protected static getSpaceFor:Ljava/lang/String;

.field protected static inode:Ljava/lang/String;

.field protected static mounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/Mount;",
            ">;"
        }
    .end annotation
.end field

.field protected static nativeToolsReady:Z

.field protected static path:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static permissions:Lcom/stericson/RootTools/Permissions;

.field protected static psPattern:Ljava/util/regex/Pattern;

.field protected static results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static space:[Ljava/lang/String;

.field protected static symlinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/Symlink;",
            ">;"
        }
    .end annotation
.end field

.field protected static timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "RootTools v2.4"

    sput-object v0, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const/16 v0, 0x1388

    sput v0, Lcom/stericson/RootTools/InternalVariables;->timeout:I

    const/4 v0, 0x1

    sput v0, Lcom/stericson/RootTools/InternalVariables;->FPS:I

    const/4 v0, 0x2

    sput v0, Lcom/stericson/RootTools/InternalVariables;->IAG:I

    const/4 v0, 0x3

    sput v0, Lcom/stericson/RootTools/InternalVariables;->BBA:I

    const/4 v0, 0x4

    sput v0, Lcom/stericson/RootTools/InternalVariables;->BBV:I

    const/4 v0, 0x5

    sput v0, Lcom/stericson/RootTools/InternalVariables;->GI:I

    const/4 v0, 0x6

    sput v0, Lcom/stericson/RootTools/InternalVariables;->GS:I

    const/4 v0, 0x7

    sput v0, Lcom/stericson/RootTools/InternalVariables;->GSYM:I

    sput-boolean v1, Lcom/stericson/RootTools/InternalVariables;->accessGiven:Z

    sput-boolean v1, Lcom/stericson/RootTools/InternalVariables;->nativeToolsReady:Z

    sput-boolean v1, Lcom/stericson/RootTools/InternalVariables;->found:Z

    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/InternalVariables;->inode:Ljava/lang/String;

    const-string v0, "^\\S+\\s+([0-9]+).*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/stericson/RootTools/InternalVariables;->psPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
