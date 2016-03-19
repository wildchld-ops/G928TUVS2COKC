.class Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$3;
.super Ljava/lang/Object;
.source "DbUpdateSettingsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->sortAvailableList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

.field final synthetic val$dbSize:I


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$3;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    iput p2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$3;->val$dbSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)I
    .locals 4

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$3;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getDBFactor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$300(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$3;->val$dbSize:I

    mul-int v0, v2, v3

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$3;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    invoke-virtual {p2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getDBFactor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$300(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$3;->val$dbSize:I

    mul-int v1, v2, v3

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    check-cast p2, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {p0, p1, p2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$3;->compare(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)I

    move-result v0

    return v0
.end method
