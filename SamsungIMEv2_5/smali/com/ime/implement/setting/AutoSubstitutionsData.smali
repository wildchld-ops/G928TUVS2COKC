.class public Lcom/ime/implement/setting/AutoSubstitutionsData;
.super Ljava/lang/Object;
.source "AutoSubstitutionsData.java"


# instance fields
.field mShortcut:Ljava/lang/String;

.field mSubstitution:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/AutoSubstitutionsData;->mShortcut:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/AutoSubstitutionsData;->mSubstitution:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ime/implement/setting/AutoSubstitutionsData;->mShortcut:Ljava/lang/String;

    iput-object p2, p0, Lcom/ime/implement/setting/AutoSubstitutionsData;->mSubstitution:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getShortcut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoSubstitutionsData;->mShortcut:Ljava/lang/String;

    return-object v0
.end method

.method public getSubstitutions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoSubstitutionsData;->mSubstitution:Ljava/lang/String;

    return-object v0
.end method
