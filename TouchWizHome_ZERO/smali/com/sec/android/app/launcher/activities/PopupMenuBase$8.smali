.class Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;
.super Ljava/lang/Object;
.source "PopupMenuBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

.field final synthetic val$animate:Z

.field final synthetic val$animationType:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->val$animationType:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    iput-boolean p3, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->val$visible:Z

    iput-boolean p4, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->val$animationType:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->NONE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->val$visible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->val$animate:Z

    # invokes: Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setButtonVisible(ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->access$200(Lcom/sec/android/app/launcher/activities/PopupMenuBase;ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->val$visible:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;->val$animate:Z

    # invokes: Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setButtonInvisible(ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->access$300(Lcom/sec/android/app/launcher/activities/PopupMenuBase;ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V

    goto :goto_0
.end method
