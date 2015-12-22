.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$3;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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

.field final synthetic val$mFingerUseIndexes:[I


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;[I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iput-object p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$3;->val$mFingerUseIndexes:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3

    if-eqz p3, :cond_1

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$3;->val$mFingerUseIndexes:[I

    aget v2, v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$3;->val$mFingerUseIndexes:[I

    aget v2, v2, p2

    if-ne v1, v2, :cond_2

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
