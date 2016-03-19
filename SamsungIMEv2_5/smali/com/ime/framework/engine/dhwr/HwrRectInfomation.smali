.class public Lcom/ime/framework/engine/dhwr/HwrRectInfomation;
.super Ljava/lang/Object;
.source "HwrRectInfomation.java"


# static fields
.field public static final RECOGNIZED_STRING:I = 0x1

.field public static final STROKE:I


# instance fields
.field mIndex:I

.field mString:Ljava/lang/String;

.field mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/RectF;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ime/framework/engine/dhwr/HwrRectInfomation;->mType:I

    iput v0, p0, Lcom/ime/framework/engine/dhwr/HwrRectInfomation;->mIndex:I

    iput p1, p0, Lcom/ime/framework/engine/dhwr/HwrRectInfomation;->mType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/ime/framework/engine/dhwr/HwrRectInfomation;->mString:Ljava/lang/String;

    :cond_0
    iput p4, p0, Lcom/ime/framework/engine/dhwr/HwrRectInfomation;->mIndex:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/engine/dhwr/HwrRectInfomation;->mIndex:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrRectInfomation;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/engine/dhwr/HwrRectInfomation;->mType:I

    return v0
.end method
