.class Lcom/sec/android/app/launcher/activities/PopupMenuBase$6;
.super Ljava/lang/Object;
.source "PopupMenuBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setButtonVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

.field final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$6;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    iput p2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$6;->val$visible:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$6;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$6;->val$visible:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$6;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    iget v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$6;->val$visible:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
