.class Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$1;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$1;->this$1:Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$1;->this$1:Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    # invokes: Lcom/android/settings/wifi/WifiSecSetupActivity;->allowToGoNext(ZZI)V
    invoke-static {v0, v1, v1, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$700(Lcom/android/settings/wifi/WifiSecSetupActivity;ZZI)V

    return-void
.end method
