.class Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;
.super Ljava/lang/Object;
.source "DbUpdatePrefrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public mCancelButton:Landroid/widget/Button;

.field public mDBName:Landroid/widget/TextView;

.field public mDBUpdateDate:Landroid/widget/TextView;

.field public mPercentProgress:Landroid/widget/ProgressBar;

.field public mUpdateButton:Landroid/widget/Button;

.field public mWaitingProgress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
