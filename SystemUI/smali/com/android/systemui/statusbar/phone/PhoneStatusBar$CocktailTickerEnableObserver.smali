.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailTickerEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cocktail_bar_tickers_enabled"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$18400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTickerEnablebyCocktailSettings.onChange() - DB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
