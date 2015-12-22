.class Lcom/android/systemui/recents/AlternateRecentsComponent$12;
.super Ljava/lang/Object;
.source "AlternateRecentsComponent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/AlternateRecentsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$12;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onServiceConnected with IRecentsAlternateProxyService"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$12;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-static {p2}, Lcom/android/systemui/recents/IRecentsAlternateProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$12;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$12;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-boolean v1, v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$12;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v1, v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on onBootCompleted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "onServiceDisconnected with IRecentsAlternateProxyService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$12;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$12;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    return-void
.end method
