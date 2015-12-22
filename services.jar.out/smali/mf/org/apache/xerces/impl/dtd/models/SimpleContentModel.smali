.class public Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;
.super Ljava/lang/Object;
.source "SimpleContentModel.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;


# static fields
.field public static final CHOICE:S = -0x1s

.field public static final SEQUENCE:S = -0x1s


# instance fields
.field private final fFirstChild:Lmf/org/apache/xerces/xni/QName;

.field private final fOperator:I

.field private final fSecondChild:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>(SLmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    :goto_0
    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fOperator:I

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public validate([Lmf/org/apache/xerces/xni/QName;II)I
    .locals 4

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fOperator:I

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ImplementationMessages.VAL_CST"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-object v2, p1, p2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    if-le p3, v1, :cond_3

    move v0, v1

    goto :goto_0

    :pswitch_1
    if-ne p3, v1, :cond_2

    aget-object v2, p1, p2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    :cond_2
    if-le p3, v1, :cond_3

    move v0, v1

    goto :goto_0

    :pswitch_2
    if-lez p3, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_4

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    add-int v1, p2, v0

    aget-object v1, p1, v1

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_3
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p3, :cond_3

    add-int v1, p2, v0

    aget-object v1, p1, v1

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_4
    if-eqz p3, :cond_0

    aget-object v2, p1, p2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    aget-object v2, p1, p2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    :cond_5
    if-le p3, v1, :cond_3

    move v0, v1

    goto :goto_0

    :pswitch_5
    if-ne p3, v2, :cond_6

    aget-object v2, p1, p2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p2, 0x1

    aget-object v2, p1, v2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_6
    if-le p3, v2, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, p3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
