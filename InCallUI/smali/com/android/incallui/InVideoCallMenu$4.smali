.class Lcom/android/incallui/InVideoCallMenu$4;
.super Ljava/lang/Object;
.source "InVideoCallMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InVideoCallMenu;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InVideoCallMenu;


# direct methods
.method constructor <init>(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InVideoCallMenu$4;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$4;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # getter for: Lcom/android/incallui/InVideoCallMenu;->mIsSelectedImage:Z
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$400(Lcom/android/incallui/InVideoCallMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$4;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$100(Lcom/android/incallui/InVideoCallMenu;)Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->selectOutgoingImageFromMyFiles()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$4;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$100(Lcom/android/incallui/InVideoCallMenu;)Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->selectVideoFromMyFiles()V

    goto :goto_0
.end method
