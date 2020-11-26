/**
 * 
 */

var count = 0;

		$("#btn").click(function() {
			var title = $("#title").val();
			var contents = $("#contents").val();
			if (title == '' && contents == '') {
				alert("제목과 내용은 비울 수 없습니다.");
			} else {
				$("#frm2").submit();
			}
		});
		$("#fileAdd").click(function() {

			if (count < 5) {
				var f = $("#f").html().trim();
				$("#files").append(f);
				count++;
			} else {
				alert("첨부파일은 최대 5개까지 입니다")
			}
		});
		$("#files").on("click", ".del", function() {
			$(this).parent().remove();
			count--;
		});