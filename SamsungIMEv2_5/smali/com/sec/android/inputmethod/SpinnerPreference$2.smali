.class Lcom/sec/android/inputmethod/SpinnerPreference$2;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SpinnerPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SpinnerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SpinnerPreference$2;->this$0:Lcom/sec/android/inputmethod/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference$2;->this$0:Lcom/sec/android/inputmethod/SpinnerPreference;

    # invokes: Lcom/sec/android/inputmethod/SpinnerPreference;->setSelectedItem(I)V
    invoke-static {v0, p3}, Lcom/sec/android/inputmethod/SpinnerPreference;->access$200(Lcom/sec/android/inputmethod/SpinnerPreference;I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ime/framework/repository/InputModeStatus;->setChangedMainValuesForStartInputView(Z)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
