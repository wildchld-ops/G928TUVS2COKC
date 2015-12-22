.class public Lcom/android/systemui/twscreenmanager/TwScreenManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TwScreenManagerReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwScreenManagerReceiver"


# instance fields
.field private final debug:Z

.field private mScreenOff:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerReceiver;->debug:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.screenmanager.LAUNCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
