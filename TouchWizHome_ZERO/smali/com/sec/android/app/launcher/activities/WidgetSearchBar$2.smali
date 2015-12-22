.class Lcom/sec/android/app/launcher/activities/WidgetSearchBar$2;
.super Ljava/lang/Object;
.source "WidgetSearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$2;->this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$2;->this$0:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSearchBarListener:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->access$300(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$2;->val$query:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;->onQueryUpdate(Ljava/lang/String;)Z

    return-void
.end method
