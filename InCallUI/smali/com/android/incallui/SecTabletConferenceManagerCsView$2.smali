.class Lcom/android/incallui/SecTabletConferenceManagerCsView$2;
.super Ljava/lang/Object;
.source "SecTabletConferenceManagerCsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletConferenceManagerCsView;->setupSeparateButtonForRow(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$2;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$2;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSelectedRowId:I
    invoke-static {v1, v0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->access$002(Lcom/android/incallui/SecTabletConferenceManagerCsView;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "separateButton is clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$2;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    # getter for: Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSelectedRowId:I
    invoke-static {v1}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->access$000(Lcom/android/incallui/SecTabletConferenceManagerCsView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$2;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$2;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    # getter for: Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSelectedRowId:I
    invoke-static {v1}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->access$000(Lcom/android/incallui/SecTabletConferenceManagerCsView;)I

    move-result v1

    # invokes: Lcom/android/incallui/SecTabletConferenceManagerCsView;->animateForSplit(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->access$100(Lcom/android/incallui/SecTabletConferenceManagerCsView;I)V

    return-void
.end method
