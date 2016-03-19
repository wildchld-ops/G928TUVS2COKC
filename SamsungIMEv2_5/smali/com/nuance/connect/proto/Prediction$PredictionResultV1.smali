.class public final Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
.super Lcom/a/a/h;

# interfaces
.implements Lcom/nuance/connect/proto/Prediction$PredictionResultV1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PredictionResultV1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_FIELD_NUMBER:I = 0x4

.field public static final FULLSPELL_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/a/a/p; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResultV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHRASE_FIELD_NUMBER:I = 0x1

.field public static final SPELL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

.field private static final serialVersionUID:J


# instance fields
.field private attribute_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fullSpell_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phrase_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private spell_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;-><init>(Z)V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/d;Lcom/a/a/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    const/4 v0, -0x1

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->initFields()V

    const/4 v2, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_11

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1, p2, v3}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    and-int/lit8 v3, v2, 0x1

    if-eq v3, v1, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

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

    and-int/lit8 v3, v2, 0x1

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    :cond_2
    and-int/lit8 v1, v2, 0x2

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    :cond_3
    and-int/lit8 v1, v2, 0x4

    if-ne v1, v7, :cond_4

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    :cond_4
    and-int/lit8 v1, v2, 0x8

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    :cond_5
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/a/a/d;->d(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x1

    if-eq v4, v1, :cond_6

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/a/a/j; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v3, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/a/a/j;->a(Lcom/a/a/n;)Lcom/a/a/j;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :try_start_4
    invoke-virtual {p1, v3}, Lcom/a/a/d;->e(I)V

    goto/16 :goto_0

    :sswitch_3
    and-int/lit8 v3, v2, 0x2

    if-eq v3, v6, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    :cond_8
    iget-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/a/a/d;->d(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x2

    if-eq v4, v6, :cond_9

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {p1, v3}, Lcom/a/a/d;->e(I)V

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v3, v2, 0x4

    if-eq v3, v7, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    :cond_b
    iget-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/a/a/d;->d(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x4

    if-eq v4, v7, :cond_c

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    :cond_c
    :goto_3
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_d

    iget-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    invoke-virtual {p1, v3}, Lcom/a/a/d;->e(I)V

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v3, v2, 0x8

    if-eq v3, v8, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    :cond_e
    iget-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/a/a/d;->d(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x8

    if-eq v4, v8, :cond_f

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    :cond_f
    :goto_4
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_10

    iget-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    invoke-virtual {p1, v3}, Lcom/a/a/d;->e(I)V
    :try_end_4
    .catch Lcom/a/a/j; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_11
    and-int/lit8 v0, v2, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    :cond_12
    and-int/lit8 v0, v2, 0x2

    if-ne v0, v6, :cond_13

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    :cond_13
    and-int/lit8 v0, v2, 0x4

    if-ne v0, v7, :cond_14

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    :cond_14
    and-int/lit8 v0, v2, 0x8

    if-ne v0, v8, :cond_15

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    :cond_15
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x18 -> :sswitch_5
        0x1a -> :sswitch_6
        0x20 -> :sswitch_7
        0x22 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/a/a/d;Lcom/a/a/f;Lcom/nuance/connect/proto/Prediction$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;-><init>(Lcom/a/a/d;Lcom/a/a/f;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/h$a;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/a/a/h;-><init>(Lcom/a/a/h$a;)V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;-><init>(Lcom/a/a/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$2100(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .locals 1

    # invokes: Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->create()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->access$1900()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom([BLcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom([BLcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method


# virtual methods
.method public getAttribute(I)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public getFullSpell(I)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFullSpellCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFullSpellList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/a/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResultV1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    return-object v0
.end method

.method public getPhrase(I)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPhraseCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhraseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v2

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/e;->c(I)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int v0, v2, v3

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getPhraseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/e;->c(I)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getSpellList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_3
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/e;->c(I)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getFullSpellList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v3, v0, v1

    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/e;->c(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    add-int v0, v3, v1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getAttributeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getSpell(I)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSpellCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpellList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .locals 1

    invoke-static {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

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

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getSerializedSize()I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
