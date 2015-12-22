.class Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisabledAppsConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;->this$0:Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;-><init>(Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;->this$0:Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;

    # invokes: Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->checkForUpdate(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->access$100(Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;Landroid/content/Intent;)V

    return-void
.end method
