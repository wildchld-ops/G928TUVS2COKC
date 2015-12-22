.class Lcom/android/incallui/SecTabletConferenceManagerCsView$1;
.super Ljava/lang/Object;
.source "SecTabletConferenceManagerCsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletConferenceManagerCsView;->setupEndButtonForRow(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

.field final synthetic val$rowId:I


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$1;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    iput p2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$1;->val$rowId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$1;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->animateForHide()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$1;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    iget v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$1;->val$rowId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->endConferenceConnection(I)V

    return-void
.end method
