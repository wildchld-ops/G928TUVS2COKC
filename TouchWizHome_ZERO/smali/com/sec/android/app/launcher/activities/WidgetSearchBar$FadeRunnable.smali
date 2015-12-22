.class Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;
.super Ljava/lang/Object;
.source "WidgetSearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/WidgetSearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeRunnable"
.end annotation


# instance fields
.field private mState:Z

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;->this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;Lcom/sec/android/app/launcher/activities/WidgetSearchBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;-><init>(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;->mState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;->this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->fadeIn()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;->this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->fadeOut()V

    goto :goto_0
.end method

.method public setFade(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;->mState:Z

    return-void
.end method
