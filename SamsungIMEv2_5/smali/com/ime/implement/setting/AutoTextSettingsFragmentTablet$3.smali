.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$3;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;
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
        "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$3;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)I
    .locals 12

    const v11, 0xd7a3

    const v10, 0xac00

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v6

    invoke-virtual {v6}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v6

    invoke-virtual {v6}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v0, v10, :cond_0

    if-gt v0, v11, :cond_0

    invoke-static {v4}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-lt v1, v10, :cond_1

    if-gt v1, v11, :cond_1

    invoke-static {v5}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    check-cast p2, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$3;->compare(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)I

    move-result v0

    return v0
.end method
