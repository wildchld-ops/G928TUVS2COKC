.class public abstract Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$SeqenceEnd;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$SeqenceChunk;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$SeqenceStart;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    }
.end annotation


# static fields
.field public static final TYPE_BYTES:I = 0x4

.field public static final TYPE_DICT:I = 0x2

.field public static final TYPE_INT:I = 0x1

.field public static final TYPE_SEQ:I = 0x3

.field public static final TYPE_SEQ_CHUNK:I = 0x6

.field public static final TYPE_SEQ_END:I = 0x7

.field public static final TYPE_SEQ_START:I = 0x5

.field public static final TYPE_STRING:I


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->a:I

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->a:I

    return v0
.end method

.method public abstract toString(Ljava/lang/String;)Ljava/lang/String;
.end method
