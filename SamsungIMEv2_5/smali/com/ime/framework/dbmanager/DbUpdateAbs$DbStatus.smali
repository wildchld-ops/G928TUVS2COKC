.class Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;
.super Ljava/lang/Object;
.source "DbUpdateAbs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/DbUpdateAbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DbStatus"
.end annotation


# instance fields
.field public downloadPrecent:I

.field public mCb:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

.field public mUpdating:Z


# direct methods
.method public constructor <init>(Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->downloadPrecent:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mUpdating:Z

    iput-object p1, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mCb:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    return-void
.end method
