.class public Lcom/android/server/am/ActivityManagerService$PackageTable;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageTable"
.end annotation


# static fields
.field public static final AUTO_ACTIVE:I = 0x3

.field public static final AUTO_INACTIVE:I = 0x1

.field public static final FORCE_ACTIVE:I = 0x2

.field public static final FORCE_INACTIVE:I


# instance fields
.field public active:I

.field public info:Landroid/content/pm/PackageInfo;

.field public isAppLockingOnly:Z

.field public isRunning:Z

.field public isWidget:Z

.field public lastForcedStopTime:J

.field public lastServiceActivityTime:J

.field public lastUsedTime:J

.field public name:Ljava/lang/String;

.field public score:I

.field public score_applocking:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PackageTable;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
