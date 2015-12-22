.class public Lcom/android/settings/wifi/WifiConnectivityUtils;
.super Ljava/lang/Object;
.source "WifiConnectivityUtils.java"


# static fields
.field private static mId:[I

.field private static mServer:Ljava/net/InetAddress;

.field private static mUrl:Ljava/lang/String;

.field private static mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/WifiConnectivityUtils;->mId:[I

    new-instance v0, Lcom/android/settings/wifi/WifiConnectivityUtils$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiConnectivityUtils;->mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void

    :array_0
    .array-data 4
        0x7f1002af
        0x7f1002b0
        0x7f1002b1
        0x7f1002b2
    .end array-data
.end method

.method public static forgetNetWork(Landroid/net/wifi/WifiManager;)V
    .locals 6

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const-string v3, "SetupWizard --> WifiConnectivityUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forgetting Wi-Fi networks "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NetworkId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    sget-object v4, Lcom/android/settings/wifi/WifiConnectivityUtils;->mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p0, v3, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getWifiNetworkID(Landroid/net/wifi/WifiManager;)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static isCaptivePortalNetwork()Z
    .locals 10

    const/4 v7, 0x0

    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    const-string v8, " Checking whther connected Wi-Fi needs Authentication for using Internet"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v3, 0x0

    sget-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/generate_204"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking Connection : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v4, Ljava/net/URL;

    sget-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Url connection response code :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/16 v8, 0xcc

    if-eq v6, v8, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v3, v7

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    if-eqz v2, :cond_2

    :try_start_2
    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Seems to be portal, with exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_2
    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probably not a portal: exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    throw v6

    :catch_3
    move-exception v1

    const-string v7, "SetupWizard --> WifiConnectivityUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isWiFiConnAvailable()Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "SetupWizard --> WifiConnectivityUtils"

    const-string v3, " checking the Internet connection Availibility"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "connectivitycheck.android.com"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectivityUtils;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    sget-object v2, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "SetupWizard --> WifiConnectivityUtils"

    const-string v3, "hostaddress lookup failed, so network has no Internet access"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const-string v2, "SetupWizard --> WifiConnectivityUtils"

    const-string v3, "  Lookup host failed, so network has no Internet access"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isZeroDevice()Z
    .locals 2

    const-string v0, "zeroltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zeroqltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZeroFDevice()Z
    .locals 2

    const-string v0, "zerofqltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zerofltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v1, v4

    array-length v5, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    move-object v0, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_1
.end method

.method public static setCustomTitle(Landroid/app/Activity;)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, -0x80000000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "stepindicator"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "stepindicator"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isZeroDevice()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isZeroFDevice()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    const/4 v2, 0x0

    if-eqz v3, :cond_1

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_1
    if-nez v2, :cond_3

    const v6, 0x7f1002ae

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    sget-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mId:[I

    aget v6, v6, v0

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v6, 0x7f020272

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const v6, 0x7f100475

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
