.class Lcom/android/incallui/SecConferenceManagerCsFragment$2;
.super Ljava/lang/Object;
.source "SecConferenceManagerCsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecConferenceManagerCsFragment;->setupSeparateButtonForRow(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecConferenceManagerCsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$2;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$2;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/incallui/SecConferenceManagerCsFragment;->mSelectedRowId:I
    invoke-static {v1, v0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->access$002(Lcom/android/incallui/SecConferenceManagerCsFragment;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "separateButton is clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$2;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    # getter for: Lcom/android/incallui/SecConferenceManagerCsFragment;->mSelectedRowId:I
    invoke-static {v1}, Lcom/android/incallui/SecConferenceManagerCsFragment;->access$000(Lcom/android/incallui/SecConferenceManagerCsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$2;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$2;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    # getter for: Lcom/android/incallui/SecConferenceManagerCsFragment;->mSelectedRowId:I
    invoke-static {v1}, Lcom/android/incallui/SecConferenceManagerCsFragment;->access$000(Lcom/android/incallui/SecConferenceManagerCsFragment;)I

    move-result v1

    # invokes: Lcom/android/incallui/SecConferenceManagerCsFragment;->animateForSplit(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/SecConferenceManagerCsFragment;->access$100(Lcom/android/incallui/SecConferenceManagerCsFragment;I)V

    return-void
.end method
