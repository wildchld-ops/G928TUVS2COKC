.class Lcom/android/keyguard/PasswordTextView$1;
.super Landroid/database/ContentObserver;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "white_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/PasswordTextView;->access$100(Lcom/android/keyguard/PasswordTextView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_1
    # setter for: Lcom/android/keyguard/PasswordTextView;->mUseBlackTextOnWhiteWallpaper:Z
    invoke-static {v2, v0}, Lcom/android/keyguard/PasswordTextView;->access$002(Lcom/android/keyguard/PasswordTextView;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->access$200(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mUseBlackTextOnWhiteWallpaper:Z
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->access$000(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->access$300(Lcom/android/keyguard/PasswordTextView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->access$200(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->white_bg_solution_pin_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->access$200(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
