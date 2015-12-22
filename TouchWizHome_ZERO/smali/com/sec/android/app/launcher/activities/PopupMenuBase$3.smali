.class Lcom/sec/android/app/launcher/activities/PopupMenuBase$3;
.super Ljava/lang/Object;
.source "PopupMenuBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/PopupMenuBase;-><init>(Landroid/app/Activity;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$3;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$3;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    # getter for: Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mVisible:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->access$000(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$3;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mVisible:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->access$002(Lcom/sec/android/app/launcher/activities/PopupMenuBase;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$3;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->onButtonClick()V

    :cond_0
    return-void
.end method
