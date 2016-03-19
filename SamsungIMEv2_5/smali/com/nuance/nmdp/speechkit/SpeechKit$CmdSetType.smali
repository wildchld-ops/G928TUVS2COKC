.class public final enum Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/SpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdSetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DRAGON_NLU:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

.field public static final enum NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

.field private static final synthetic b:[Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    const-string v1, "NVC"

    invoke-direct {v0, v1, v2, v2}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    const-string v1, "DRAGON_NLU"

    invoke-direct {v0, v1, v3, v3}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->DRAGON_NLU:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->DRAGON_NLU:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->b:[Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 1

    const-class v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 1

    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->b:[Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    invoke-virtual {v0}, [Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->a:I

    return v0
.end method
