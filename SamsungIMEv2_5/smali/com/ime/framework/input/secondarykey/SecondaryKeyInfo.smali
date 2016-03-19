.class public Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;
.super Ljava/lang/Object;
.source "SecondaryKeyInfo.java"


# instance fields
.field private mKeycode:I

.field private mLanguageID:I

.field private mSecondaryKeycode:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->mLanguageID:I

    iput p2, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->mKeycode:I

    iput p3, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->mSecondaryKeycode:I

    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->mKeycode:I

    return v0
.end method

.method public getLanguageID()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->mLanguageID:I

    return v0
.end method

.method public getSecondaryKeyCode()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->mSecondaryKeycode:I

    return v0
.end method
