.class public Landroid/app/usage/PreferredScoreInfo;
.super Ljava/lang/Object;
.source "PreferredScoreInfo.java"


# instance fields
.field public pkgName:Ljava/lang/String;

.field public score:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    iput p2, p0, Landroid/app/usage/PreferredScoreInfo;->score:I

    return-void
.end method
