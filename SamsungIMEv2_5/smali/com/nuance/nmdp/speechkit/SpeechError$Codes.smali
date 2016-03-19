.class public final Lcom/nuance/nmdp/speechkit/SpeechError$Codes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/SpeechError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Codes"
.end annotation


# static fields
.field public static final CanceledError:I = 0x5

.field public static final RecognizerError:I = 0x3

.field public static final ServerConnectionError:I = 0x1

.field public static final ServerRetryError:I = 0x2

.field public static final UnknownError:I = 0x0

.field public static final VocalizerError:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
