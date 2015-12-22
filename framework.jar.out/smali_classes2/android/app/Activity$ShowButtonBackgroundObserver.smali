.class Landroid/app/Activity$ShowButtonBackgroundObserver;
.super Landroid/database/ContentObserver;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowButtonBackgroundObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Landroid/app/Activity$ShowButtonBackgroundObserver;->this$0:Landroid/app/Activity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/Activity$ShowButtonBackgroundObserver;->this$0:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v3, p0, Landroid/app/Activity$ShowButtonBackgroundObserver;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mShowButtonBackgroundListenerList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/app/Activity;->access$600(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/app/Activity$ShowButtonBackgroundObserver;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mShowButtonBackgroundListenerList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/app/Activity;->access$600(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity$OnShowButtonBackgroundChangeListener;

    invoke-interface {v3, v2}, Landroid/app/Activity$OnShowButtonBackgroundChangeListener;->onShowButtonBackgroundChange(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
