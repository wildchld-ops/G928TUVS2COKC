.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x0

    # setter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->indexList:[I
    invoke-static {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$302([I)[I

    # setter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void
.end method
