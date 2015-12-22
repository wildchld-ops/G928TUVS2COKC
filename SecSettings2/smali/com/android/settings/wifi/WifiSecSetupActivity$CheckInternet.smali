.class Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;
.super Landroid/os/AsyncTask;
.source "WifiSecSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckInternet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/NetworkInfo;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;Lcom/android/settings/wifi/WifiSecSetupActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/NetworkInfo;)Ljava/lang/Integer;
    .locals 15

    const/4 v14, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    # getter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$800()Landroid/content/Context;

    move-result-object v10

    if-nez v10, :cond_1

    const-string v10, "WifiSecSetupActivity"

    const-string v12, "doInBackground() : mContext is null !!!"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v10, v0

    if-eqz v10, :cond_2

    aget-object v10, p1, v12

    if-eqz v10, :cond_2

    aget-object v10, p1, v12

    :cond_2
    # getter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$800()Landroid/content/Context;

    move-result-object v10

    const-string v13, "connectivity"

    invoke-virtual {v10, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_3

    const-string v10, "WifiSecSetupActivity"

    const-string v12, "ConnectivityManager is unavailable."

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v2, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v7, 0x0

    const-string v10, "WifiSecSetupActivity"

    const-string v13, "Checking http://connectivitycheck.android.com/generate_204"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v6, Ljava/net/URL;

    const-string v10, "http://connectivitycheck.android.com/generate_204"

    invoke-direct {v6, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v10, 0x1388

    invoke-virtual {v7, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v10, 0x1388

    invoke-virtual {v7, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const-string v10, "WifiSecSetupActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Captive Portal response : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xcc

    if-eq v5, v10, :cond_4

    const/4 v10, 0x2

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :cond_4
    move v10, v12

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    const-string v12, "wifi"

    invoke-virtual {v10, v12}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    const-string v10, "WifiSecSetupActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Probably not a portal, or connection no longer works"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x3

    :goto_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :cond_5
    move v10, v11

    goto :goto_2

    :catchall_0
    move-exception v10

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v10

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_0

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_0

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_0

    :cond_a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/NetworkInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->doInBackground([Landroid/net/NetworkInfo;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    new-instance v1, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    new-instance v1, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$1;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
