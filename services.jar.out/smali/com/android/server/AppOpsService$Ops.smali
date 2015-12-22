.class public final Lcom/android/server/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/server/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field public final isPrivileged:Z

.field public final isPrivilegedCredible:Z

.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/AppOpsService$Ops;->uid:I

    iput-boolean p3, p0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService$Ops;->isPrivilegedCredible:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/AppOpsService$Ops;->uid:I

    iput-boolean p3, p0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    iput-boolean p4, p0, Lcom/android/server/AppOpsService$Ops;->isPrivilegedCredible:Z

    return-void
.end method
