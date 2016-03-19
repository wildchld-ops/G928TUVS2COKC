.class public Lcom/ime/framework/emoticon/EmoticonInfo;
.super Ljava/lang/Object;
.source "EmoticonInfo.java"


# instance fields
.field private mCategoryID:I

.field private mEmoticonCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ime/framework/emoticon/EmoticonInfo;->mCategoryID:I

    iput-object p2, p0, Lcom/ime/framework/emoticon/EmoticonInfo;->mEmoticonCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategoryID()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/emoticon/EmoticonInfo;->mCategoryID:I

    return v0
.end method

.method public getEmoticonCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/emoticon/EmoticonInfo;->mEmoticonCode:Ljava/lang/String;

    return-object v0
.end method
