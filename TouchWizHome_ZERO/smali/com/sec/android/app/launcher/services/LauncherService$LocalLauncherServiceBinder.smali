.class public Lcom/sec/android/app/launcher/services/LauncherService$LocalLauncherServiceBinder;
.super Landroid/os/Binder;
.source "LauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/services/LauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalLauncherServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/services/LauncherService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/services/LauncherService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/services/LauncherService$LocalLauncherServiceBinder;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getLauncherService()Lcom/sec/android/app/launcher/services/LauncherService;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/services/LauncherService$LocalLauncherServiceBinder;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    return-object v0
.end method
