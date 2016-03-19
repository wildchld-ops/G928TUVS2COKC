.class final Lcom/nuance/nmdp/speechkit/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/SpeechError;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/nmdp/speechkit/t;->a:I

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/t;->c:Ljava/lang/String;

    if-nez p2, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "An error occurred."

    :goto_0
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/t;->b:Ljava/lang/String;

    return-void

    :pswitch_1
    const-string v0, "Failed to connect to speech server."

    goto :goto_0

    :pswitch_2
    const-string v0, "Please retry your query."

    goto :goto_0

    :pswitch_3
    const-string v0, "Query cancelled."

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/t;->a:I

    return v0
.end method

.method public final getErrorDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuggestion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/t;->c:Ljava/lang/String;

    return-object v0
.end method
