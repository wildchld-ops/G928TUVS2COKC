.class public final Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
.super Lcom/a/a/h;

# interfaces
.implements Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoggingTransactionV1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    }
.end annotation


# static fields
.field public static final CCPSVERSION_FIELD_NUMBER:I = 0x6

.field public static final CLOUDTIME_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/a/a/p; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREDICTIONRESULT_FIELD_NUMBER:I = 0x2

.field public static final RESULTCODE_FIELD_NUMBER:I = 0x3

.field public static final TOTALTIME_FIELD_NUMBER:I = 0x5

.field public static final TRANSACTIONID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ccpsVersion_:Ljava/lang/Object;

.field private cloudTime_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

.field private resultCode_:I

.field private totalTime_:I

.field private transactionID_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    new-instance v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;-><init>(Z)V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/d;Lcom/a/a/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->initFields()V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    :sswitch_2
    const/4 v0, 0x0

    iget v3, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-virtual {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    move-object v3, v0

    :goto_2
    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-virtual {p1, v0, p2}, Lcom/a/a/d;->a(Lcom/a/a/p;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-virtual {v3, v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    invoke-virtual {v3}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->buildPartial()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    :cond_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    move v0, v2

    goto :goto_1

    :sswitch_3
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    move v0, v2

    goto :goto_1

    :sswitch_4
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    move v0, v2

    goto :goto_1

    :sswitch_5
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    move v0, v2

    goto :goto_1

    :sswitch_6
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/a/a/j;->a(Lcom/a/a/n;)Lcom/a/a/j;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->makeExtensionsImmutable()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/a/a/j;->a(Lcom/a/a/n;)Lcom/a/a/j;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->makeExtensionsImmutable()V

    return-void

    :cond_3
    move-object v3, v0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/a/a/d;Lcom/a/a/f;Lcom/nuance/connect/proto/Prediction$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;-><init>(Lcom/a/a/d;Lcom/a/a/f;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/h$a;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/a/a/h;-><init>(Lcom/a/a/h$a;)V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;-><init>(Lcom/a/a/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$2800(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    return p1
.end method

.method static synthetic access$3102(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    return p1
.end method

.method static synthetic access$3300(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    # invokes: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->create()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->access$2600()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom([BLcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom([BLcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method


# virtual methods
.method public getCcpsVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getCcpsVersionBytes()Lcom/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    goto :goto_0
.end method

.method public getCloudTime()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public getParserForType()Lcom/a/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    return-object v0
.end method

.method public getPredictionResult()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getTransactionIDBytes()Lcom/a/a/c;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-static {v3, v1}, Lcom/a/a/e;->b(ILcom/a/a/n;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    invoke-static {v1, v2}, Lcom/a/a/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    invoke-static {v4, v1}, Lcom/a/a/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    invoke-static {v1, v2}, Lcom/a/a/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getCcpsVersionBytes()Lcom/a/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getTotalTime()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    return v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getTransactionIDBytes()Lcom/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    goto :goto_0
.end method

.method public hasCcpsVersion()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCloudTime()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPredictionResult()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResultCode()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalTime()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransactionID()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->newBuilderForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    invoke-static {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->newBuilder(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/a/a/h;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/a/a/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getSerializedSize()I

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getTransactionIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-virtual {p1, v2, v0}, Lcom/a/a/e;->a(ILcom/a/a/n;)V

    :cond_1
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(II)V

    :cond_2
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(II)V

    :cond_3
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(II)V

    :cond_4
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getCcpsVersionBytes()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_5
    return-void
.end method
