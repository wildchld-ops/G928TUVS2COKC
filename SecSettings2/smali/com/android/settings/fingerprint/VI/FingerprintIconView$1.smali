.class Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;
.super Ljava/lang/Object;
.source "FingerprintIconView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/VI/FingerprintIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/VI/FingerprintIconView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iput-object p2, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    const v5, 0x3f4ccccd    # 0.8f

    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->width:I

    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->height:I

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.fingerprint_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "FingerprintIconView"

    const-string v2, "Load fingerprint_v2 SVG File"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    # getter for: Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mSvg:Lcom/android/settings/fingerprint/VI/SvgHelper;
    invoke-static {v1}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->access$000(Lcom/android/settings/fingerprint/VI/FingerprintIconView;)Lcom/android/settings/fingerprint/VI/SvgHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->val$context:Landroid/content/Context;

    const v3, 0x7f080004

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fingerprint/VI/SvgHelper;->load(Landroid/content/Context;I)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    # getter for: Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mPaths:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->access$100(Lcom/android/settings/fingerprint/VI/FingerprintIconView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    # getter for: Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mSvg:Lcom/android/settings/fingerprint/VI/SvgHelper;
    invoke-static {v2}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->access$000(Lcom/android/settings/fingerprint/VI/FingerprintIconView;)Lcom/android/settings/fingerprint/VI/SvgHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iget v3, v3, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iget v4, v4, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/VI/SvgHelper;->getPathsForViewport(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v1, "FingerprintIconView"

    const-string v2, "Load fingerprint SVG File"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    # getter for: Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mSvg:Lcom/android/settings/fingerprint/VI/SvgHelper;
    invoke-static {v1}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->access$000(Lcom/android/settings/fingerprint/VI/FingerprintIconView;)Lcom/android/settings/fingerprint/VI/SvgHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;->val$context:Landroid/content/Context;

    const v3, 0x7f080001

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fingerprint/VI/SvgHelper;->load(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
