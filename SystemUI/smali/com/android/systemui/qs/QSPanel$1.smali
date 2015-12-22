.class Lcom/android/systemui/qs/QSPanel$1;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    # getter for: Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;
    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    # getter for: Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;
    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    # getter for: Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;
    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->access$200(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$Callback;->onDoneButtonClicked(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    # getter for: Lcom/android/systemui/qs/QSPanel;->mDiagnosticLogs:Z
    invoke-static {}, Lcom/android/systemui/qs/QSPanel;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    # invokes: Lcom/android/systemui/qs/QSPanel;->sendLogs()V
    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$400(Lcom/android/systemui/qs/QSPanel;)V

    goto :goto_0
.end method
