.class public Lcom/touchtype/personalizer/PersonalizerActivity;
.super Landroid/app/Activity;
.source "PersonalizerActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isLoadingFinished:Z

.field private isRedirectedUrl:Z

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isRedirectedUrl:Z

    return-void
.end method

.method public static extractParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v2, ""

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x26

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method private start(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v3, "service"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v4, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finish()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v4, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x7f0300a7

    invoke-virtual {p0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->setContentView(I)V

    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    const v1, 0x7f0d0181

    invoke-virtual {p0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f10011e

    invoke-virtual {p0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearAnimation()V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->freeMemory()V

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->start(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    const-string v2, "CookieManager not initialised. onDestroy called before onCreate?"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
