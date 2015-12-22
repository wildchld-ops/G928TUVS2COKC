.class Lcom/sec/android/app/launcher/activities/WidgetSearchBar$1;
.super Ljava/lang/Object;
.source "WidgetSearchBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/WidgetSearchBar;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$1;->this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$1;->this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->access$100(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$1;->this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->access$100(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$1;->this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->access$200(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
