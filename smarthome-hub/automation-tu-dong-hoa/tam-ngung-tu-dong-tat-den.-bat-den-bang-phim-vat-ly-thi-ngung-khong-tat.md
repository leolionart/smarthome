# Tạm ngưng tự động tắt đèn. Bật đèn bằng phím vật lý thì ngưng không tắt

Chắc hẳn trong các kịch bản sử dụng smarthome hằng ngày, có nhiều lúc bạn muốn thiết lập một ngoại lệ. Ví dụ mình đi vào chỗ thay đồ, đèn sáng lên để lấy đồ xong thì tự tắt. Tuy nhiên có những trường hợp lựa đồ lâu hơn và mình k muốn cứ phải chuyển động liên tục để đèn không tắt. Lúc này có bấm bật đèn lên thủ công lát nó cũng tự tắt theo đúng kịch bản trước đó.



Cách làm ở đây là thiết lập một automation để khi kích hoạt sẽ tạm ngưng automation tắt đèn. Ở đây mình thiết lập bằng Aqara Home (các hãng khác bạn tìm kiếm chức năng tương tự nhé).

<figure><img src="../../.gitbook/assets/image (11).png" alt=""><figcaption></figcaption></figure>

### **Giải thích**

1. **Trigger**: Khi bấm nút bên dưới hoặc ấn nút Remote (button bật nhanh trong góc tủ)
2. **Conditions**: Cả 2 trường hợp nhấn đều được áp dụng kịch bản
3. **Action**: Disable Automation OFF Dressing Light > Wait 10 min > Enable Automation OFF Dressing Light&#x20;
