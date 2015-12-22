.class Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$1;
.super Ljava/lang/Object;
.source "LauncherFavoritesConnector.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$1;->this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$1;->this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->checkChangeDialer(Z)V

    return-void
.end method
