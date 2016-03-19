.class public Lcom/ime/framework/common/SoftFuncKeyInfo;
.super Ljava/lang/Object;
.source "SoftFuncKeyInfo.java"


# instance fields
.field private mIndex:I

.field private mKeyCode:I

.field private mLabel:Ljava/lang/String;

.field private mLanguage:Lcom/ime/framework/common/Language;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/ime/framework/common/Language;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/common/SoftFuncKeyInfo;->mKeyCode:I

    iput p1, p0, Lcom/ime/framework/common/SoftFuncKeyInfo;->mIndex:I

    iput p2, p0, Lcom/ime/framework/common/SoftFuncKeyInfo;->mKeyCode:I

    iput-object p3, p0, Lcom/ime/framework/common/SoftFuncKeyInfo;->mLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/ime/framework/common/SoftFuncKeyInfo;->mLanguage:Lcom/ime/framework/common/Language;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/common/SoftFuncKeyInfo;->mIndex:I

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/common/SoftFuncKeyInfo;->mKeyCode:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/SoftFuncKeyInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Lcom/ime/framework/common/Language;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/SoftFuncKeyInfo;->mLanguage:Lcom/ime/framework/common/Language;

    return-object v0
.end method
